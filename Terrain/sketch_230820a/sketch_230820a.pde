int cols, rows;
int scl=20;
int w=4000;
int h=2000;
float[][] terrain;
float flying;
void setup() {
  size(1600, 1060, P3D);
  cols=w/scl;
  rows=h/scl;
  terrain=new float[cols][rows];
}
void draw() {
  flying-=0.04;
  float yoff=flying;
  for (int y=0; y<rows; y++) {
    float xoff=0;
    for (int x=0; x<cols; x++) {
      terrain[x][y]=map(noise(xoff, yoff), 0, 1, -200, 200);
      xoff+=0.07;
    }
    yoff+=0.07;
  }
  lights();
  background(0);
  translate(width/2, height/2+200);
  rotateX(PI/3);
  noStroke();
  fill(0,200,0);
  translate(-w/2, -h/2);
  for (int y=0; y<rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x=0; x<cols; x++) {
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}
