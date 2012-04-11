import com.google.common.collect.HashBiMap;

// hi here's a comment

Arena a;

boolean[] keys = new boolean[526];

void setup() {
  size(500, 500);
//  smooth();
  noStroke();
  rectMode(CENTER);

  
  a = new Arena();
}

void draw() {
  background(0);
  a.draw();
}

boolean checkKey(String k)
{
  for(int i = 0; i < keys.length; i++)
    if(KeyEvent.getKeyText(i).toLowerCase().equals(k.toLowerCase())) return keys[i];  
  return false;
}
 
void keyPressed()
{ 
  keys[keyCode] = true;
  println(KeyEvent.getKeyText(keyCode));
}
 
void keyReleased()
{ 
  keys[keyCode] = false; 
}


