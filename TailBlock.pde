class TailBlock extends Actor {
  color myColor;
  
  TailBlock(color c) {
    myColor = c;
  }
  
  void draw() {
    PVector loc = getLocation();
     
    pushMatrix();
      translate(loc.x, loc.y);
      fill(myColor);
      rect(0,0,5,5);
    popMatrix();
  }
}
      
