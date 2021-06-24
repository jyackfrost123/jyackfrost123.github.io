/* @pjs preload="app/data/kawaii.png"; */

PImage img;
//Minim minim;
//AudioPlayer player;

void setup(){
  
  
  size(400, 400);
  img = loadImage("../app/data/kawaii.png");
  
  //minim = new Minim(this);  //初期化
  //player = minim.loadFile("./bgm.mp3");
  //player.setGain(-20);//6~-80
  //player.play();  //再生
}

void draw(){
    image(img, width/2 - 25, height/2 - 25);
}
