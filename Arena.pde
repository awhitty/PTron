class Arena {
  HashBiMap actors;
  
  int gridScale;
  
  Arena() {
    gridScale = 20;
    actors = HashBiMap.create();
    add(new Player(), width/2, height/2);
  }
  
  // adds an actor to a specified location
  // returns true if the actor was added
  // and returns false if it was not
  boolean add(Actor a, float x, float y) {
    PVector loc = new PVector(x, y);
//    if(valid(loc));
    actors.put(loc, a);
    return true;
  }
  
  // remove 
//  boolean remove(Actor a) {}
  
  // returns true if location is valid
//  boolean valid(Location loc) {}
  
  void draw() {
    
    Object[] toDraw = actors.values().toArray();
    for(Object a : toDraw)
      ((Actor) a).draw();
  }
}
    
  
  
