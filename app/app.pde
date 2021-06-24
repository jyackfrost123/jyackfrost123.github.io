
PImage img;

void setup(){
  size(400, 400);
  img = loadImage("kawaii.png");

}

void draw(){
    image(img, width/2 - 25, height/2 - 25);
}
