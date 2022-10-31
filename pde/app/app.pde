//new Yum must install minim library in your Processing.
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Test.

Minim minim; //new

void setup() {
  //for BGM & SE (for New)
  minim = new Minim(this);//new
  loadAllMusicFile();//new
  loadBackGround();//new
  
  size(400, 300);
}

float x = 0;
float y = 100;
float dx = 1;
float dy = 2;
float sx = 1; // <---
float sy = 2; // <---

int count = 0;  //カウントの初期値0
int ball_count = 3; // <---

int hit[] = { 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 }; // <---//ブロックごとの当たっていい回数（初期値は残り2）

float r_w = 50.0; // racket width
float b_w = 40.0; // block width
float b_h = 40.0; // block height
float a_w = 15.0; // ball width
float a_h = 15.0; // ball height

int isclearcount = 0;
boolean isClear = false;
//int isClear = 0;//new

void draw() {
  
  int ref = 0;

  // move ball
  x = x + dx; 
  y = y + dy;
  
  //for new Addlimit
  showBlockY += 0.05f;//new
  if(showBlockY >= 250-b_h) showBlockY = 40;//new

  // check reflection
  if (x + a_w >= width) {
    //dx = -1;
    dx = -sy;//new
  } else if (x < 0) {
    //dx = 1;
    dx = sx;//new
  }
  
  if (y + a_w > height) {
    x = 0;
    y = 100;
    dx = 1;
    dy = 2;
    sx = 1;//new
    sy = 2;//new
    count = 0;
    ball_count--; // <---
    if (ball_count < 0) {  // new change
      dx = 0;
      dy = 0;
      ball_count = 0; //no change
      x = 1000; //new change
      y = 1000; //new change
    }
  } else if (y < 0) {
    //dy = 2;
    dy = sy;//new
  }
    
  //background(128, 128, 255);
  background(backImg);//new
  
  rect(x, y, a_w, a_w); // ball
  rect(mouseX, 250, r_w, 3); // pad
  
  isclearcount = 0;//new

  for(int i = 0; i<hit.length; i++) {
    if (hit[i] > 0) {
      
      isclearcount++;//new
      
      show_block(i);
      ref = checkHitBlock(i, x, y);
      
      //only y
      switch (ref) {
        case 1:
          hit[i]--;
          breakBlock.trigger();//new
        case 2:
        case 8:
          dy = sy;
          sy = sy + 0.1;
          break;
        case 5:
          hit[i]--;
          breakBlock.trigger();//new
        case 4:
        case 6:
          dy = -sy;
          sy = sy + 0.1;
          break;
      }
      
      //only x
      switch (ref) {
        case 2:
        case 3:
        case 4:
          dx = sx;
          sx = sx + 0.1;
          break;
        case 6:
        case 7:
        case 8:
          dx = -sx;
          sx = sx + 0.1;
          break;
      }
    }
  }
  
  //isclearcount = 0;//for Debug 

  if(isclearcount == 0){//new
  
    if(isClear == false){//new
      isClear = true;//new
      gameClear.trigger();//new
    }
    
    fill(255, 0, 0);//new
    textSize(60);//new
    text("Clear!!!", width / 4.0, height/2.0) ;//new Clear text
    textSize(16);//new
    fill(255);//new
  }
  
   if (ball_count == 0 && isClear == false) {//gameOver new
      fill(255, 0, 0);//new
      textSize(60);//new
      text("GameOver!!!", width / 15.0, height/2.0) ;//new GameOver Text
      textSize(16);//new
      fill(255);//new
    }

  text(count, 10, height); 
    
  if (checkHit(x, y)) {//HitPaddle
    //dy = -2;
    dy = -sy;
    blockHitSE.trigger();//call SE (for New)
    count = count + 1;
  }
}
