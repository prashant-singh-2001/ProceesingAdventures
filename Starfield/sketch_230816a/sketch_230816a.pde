Star[] stars=new Star[1000];
float speed;
void setup() {
  size(1920, 1080);
  for (int i=0; i<stars.length; i++) {
    stars[i]=new Star();
  }
}
void draw() {
  speed=map(mouseX*mouseY, 0, width*height, 10, 100);
  background(0);
  translate(width/2, height/2);
  for (int i=0; i<stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
