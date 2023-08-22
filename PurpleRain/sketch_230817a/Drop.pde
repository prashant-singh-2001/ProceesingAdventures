class Drop {
  float x;
  float y;
  float sy;
  float z;
  float l;
  Drop() {
    x=random(width);
    y=random(-height, 0);
    z=random(0, 20);
    l=map(z, 20, 0, 10, 20);
    sy=map(z, 0, 20, 1, 15);
  }
  void fall() {
    y=y+sy;
    sy+=map(z, 0, 20, 0, 0.1);
    if (y>height) {
      y=random(-height, 0);
      sy=map(z, 0, 20, 1, 15);
    }
  }
  void show() {
    float thick=map(z, 0, 20, 0.1, 4);
    strokeWeight(thick);
    stroke(138, 43, 226);
    line(x, y, x, y+l);
  }
}
