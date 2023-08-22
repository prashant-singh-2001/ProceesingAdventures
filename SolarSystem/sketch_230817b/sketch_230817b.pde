import gifAnimation.*;
import peasy.*;

Planet sun;
PeasyCam cam;
GifMaker gifExport;
void setup() {
  size(1000, 1000, P3D);
  sun=new Planet(50, 0, 0);
  sun.spawn(10, 1);
  cam=new PeasyCam(this, 500);
  //gifExport = new GifMaker(this, "out.gif");
  //gifExport.setRepeat(0); // 0 means "loop forever"
}
int i=0;
void draw() {
  background(0);
  i++;lights();
  sun.show();
  sun.orbit();
  //gifExport.setDelay(30);
  //println(i);
  //gifExport.addFrame();
  if(i>120){
    //gifExport.finish();
    //noLoop();
  }
}
