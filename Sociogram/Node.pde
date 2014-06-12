class Node
{
  color c;
  boolean dragged = false;  // Is the node prepared to be dragged? (clicked)
  float posX, posY;         // Location
  int maxX = width/10;     // Set the maximums to not be out of the canvas
  int maxY = height/10;
  float offsetX, offsetY;   // Mouseclick compensation to drag
  byte id;

  // Constructors
  Node()
  {
    c = color(#222DED);
    posX = random(maxX, width - maxX);
    posY = random(maxY, height - maxY);
    offsetX = 0;
    offsetY = 0;
  }

  // Methods
  void display()
  {
    stroke(#000000);
    fill(c);
    ellipse(posX, posY, 50, 50);
    fill(#000000);
    text(id, posX, (posY - 35));
  }
  
  void drag(int mX, int mY)
  {
    if(dragged == true)
    {
      // Relative location tracking
      posX = mX + offsetX;
      posY = mY + offsetY;
    }
  }
  
  void noDrag()
  {
    dragged = false;
  }
}
