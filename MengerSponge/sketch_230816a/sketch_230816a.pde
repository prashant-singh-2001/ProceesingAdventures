import peasy.*;

PeasyCam cam;
float a=0;
Box b;
ArrayList<Box> sponge;
void setup() {
  size(1000, 1000, P3D);
  sponge=new ArrayList<>();
  b=new Box(0, 0, 0, 900);
  sponge.add(b);
  translate(500,500);
  cam=new PeasyCam(this,1000);
}
void mousePressed() {
  ArrayList<Box> next=new ArrayList<>();
  for (Box b : sponge) {
    next.addAll(b.generate());
  }
  sponge=next;
}
void draw() {
  background(51);
  noStroke();
  //noFill();
  lights();
  translate(width/2, height/2) ;
  rotateX(a);
  rotateY(a*0.4);
  rotateZ(a*0.1);
  int i=255,j=255/2,k=255/3;
  for (Box b : sponge) {
    b.show();
    i+=200;j+=200;k+=200;
  }
  a+=0.01;
}
