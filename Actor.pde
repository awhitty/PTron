class Actor {
  Actor() {
  }
  
  PVector getLocation() {
    return (PVector) a.actors.inverse().get(this);
  }
  
  void draw() {
    PVector loc = getLocation();
    pushMatrix();
      translate(loc.x, loc.y);
      rect(0,0,10,10);
    popMatrix();
  }
  
}
