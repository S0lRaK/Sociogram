/*
// Matriz de alumnos
Alumno[][] clase;

// Número de filas y columnas de la clase
int cols = 5;
int rows = 5;

void setup() {
  clase = new Alumno[cols][rows];
}
*/

// Global variables
Node node;
ArrayList<Node> nodes;
byte maxNodes = 15;

void setup() // executed once
{
  size(800, 600);
  smooth(); // anti-aliased egdes and improved resized quality images
  nodes = new ArrayList<Node>();
  // Fill the array with the number set above
  for (byte i = 0; i < maxNodes; i++)
  {
    nodes.add(node = new Node(){});
  }
}

void draw() // continuosly executed
{
  background(#FFFFFF);
  // Go through the array of nodes
  for (byte i = 0; i < nodes.size(); i++)
  {
    Node node = nodes.get(i);
    node.id = i;
    node.display();
  }
  //drawConnection();
  node.drag(mouseX, mouseY);
}
/*
void drawConnection()
{
  for (byte i = 0; i < nodes.size(); i++)
  {
    //int connect = random(nodes.size());
    line(node.posX, node.posY, nodes.get(i++).posX, nodes.get(i++).posY);
  }
}
*/
void mouseClicked()
{
  // over a node
  if(mouseX < (node.posX + 25) && mouseX > (node.posX - 25) && mouseY < (node.posY + 25) && mouseY > (node.posY - 25))
  {
    node.dragged = true;
    // Set offsets for location tracking
    node.offsetX = node.posX - mouseX;
    node.offsetY = node.posY - mouseY;
  }
}

void mouseReleased()
{
  node.noDrag();
}


