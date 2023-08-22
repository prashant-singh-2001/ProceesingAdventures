class Planet {
  float radius;
  float angle;
  float d;
  float os;
  PVector v;
  int red,green,blue;
  Planet[] planets;
  Planet(float r, float d_, float o) {
    v=PVector.random3D();
    radius=r;
    angle=random(TWO_PI);
    d=d_;
    os=o;
    v.mult(d);
    red=(int)random(0,205);
    green=(int)random(0,205);
    blue=(int)random(0,205);
  }
  void spawn(int children, int level) {
    planets=new Planet[children];
    for (int i=0; i<planets.length; i++) {
      float r=radius/(2*level);
      float d=random((radius+r)*2, (radius+r)*4);
      float o=random(-0.07, 0.07);
      planets[i]=new Planet(r, d, o);
      if (level<5)
        planets[i].spawn((int)random(0, 5), level+1);
    }
  }
  void orbit() {
    angle+=os;
    if (planets!=null) {
      for (Planet p : planets) {
        p.orbit();
      }
    }
  }
  void show() {
    pushMatrix();
    noStroke();
    PVector v2=new PVector(1,0,1);
    PVector p=v.cross(v2);
    rotate(angle,p.x,p.y,p.z);
    translate(v.x,v.y,v.z);
    fill(red,blue,green);
    sphere(radius);
    if (planets!=null) {
      for (Planet pt : planets) {
        pt.show();
      }
    }
    popMatrix();
  }
}
