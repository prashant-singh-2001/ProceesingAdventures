Drop[] d;
int drops=500;
void setup() {
  size(1280, 720);
  d=new Drop[drops];
  for (int i=0; i<d.length; i++) {
    d[i]=new Drop();
  }
}
void draw() {
  background(230, 230, 250);
  for (int i=0; i<d.length; i++) {
    d[i].fall();
    d[i].show();
  }
}
