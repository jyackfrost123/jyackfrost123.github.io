void setup() {
  size(640, 640);
  background(0);
  
  stroke(255);
  fill(150);
  strokeWeight(5);
}

void draw() {
  background(0);
  ellipse(mouseX, mouseY, 50, 50);
}

void mouseClicked() {
  ellipse(mouseX, mouseY, 50, 50);
}
