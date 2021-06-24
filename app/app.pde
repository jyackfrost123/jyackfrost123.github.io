
/* @pjs preload="app/data/kawaii.png,app/data/chokawaii.png"; */

PImage img;
PImage img2;
//Minim minim;
//AudioPlayer player;

void setup(){
  
  
  size(400, 400);
  img = loadImage("../app/data/kawaii.png");
  img2 = loadImage("../app/data/chokawaii.png");
  
  //minim = new Minim(this);  //初期化
  //player = minim.loadFile("./bgm.mp3");
  //player.setGain(-20);//6~-80
  //player.play();  //再生
}

void draw(){
    image(img, width/2 - 25, height/2 - 25);
    image(img2,0, 0);
}
