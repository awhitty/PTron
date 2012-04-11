class Player extends Actor {
  PVector velocity;
  float speed;
  color myColor;
  
  Player() {
    velocity = new PVector(1,0);
    speed = 3;
    myColor = color(50,200,255);
  }
  
  void draw() {
    move();
    
    fill(255);
    super.draw();
    
    if(checkKey("up"))
      velocity = new PVector(0,-1);
    if(checkKey("right"))
      velocity = new PVector(1,0);
    if(checkKey("left"))
      velocity = new PVector(-1,0);
    if(checkKey("down"))
      velocity = new PVector(0,1);
      
    velocity.normalize();
    velocity.mult(speed);
  }
  
  void move() {
    PVector loc = getLocation();
    a.actors.remove(loc);
    a.add(new TailBlock(myColor), loc.x, loc.y);
    loc.add(velocity);
    a.actors.put(loc, this);
    
  }
}
