import peasy.*;

float x=0.01;
float y=0;
float z=0;
float a=10;
float c=8.0/3.0;
float b=28;
PeasyCam cam;
ArrayList<PVector> points=new ArrayList<>();
void setup() {
  size(1000, 1000, P3D);
  colorMode(HSB);
  cam =new PeasyCam(this, 1000);
}
void draw() {
  background(0);
  lights();
  float dt=0.008;
  float dz=(x*y-c*z)*dt;
  float dy=(x*(b-z)-y)*dt;
  float dx=(a*(y-x))*dt;
  x=x+dx;
  y=y+dy;
  z=z+dz;
  points.add(new PVector(x, y, z));
  
  //translate(width/2, height/2);
  scale(5);
  noFill();
  beginShape();
  float hu=0;
  for (PVector v : points) {
    stroke(hu,255,255);
    vertex(v.x, v.y, v.z);
    hu=(hu+1)%256;
    //PVector offset=PVector.random3D();
    //offset.mult(0.01);
    //v.add(offset);
  }
  endShape();
}
