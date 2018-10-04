//This code will make an interactive screen of an active circle that will splash various sizes of circle on a black background and the user will be able to manipulate the color of the circle through mouse.

int colordecrease = 50;

void setup() {
  size(900, 600);
  background(0);
}

void activeCircle(float min, float max, int xcoo, int ycoo) // defining a function with minimum and maximum size for the circle as well as the position of the circle on the canvas (xcoo, ycoo)
{
  float size = random(min, max);
  fill(mouseX, mouseY, mouseX-colordecrease);
  ellipse(xcoo, ycoo, size, size );
}
//defining variables for function input
int minimum = 10;
int maximum = 500;
int xposition = 450;
int yposition = 300;

//Calling a function 
void draw() {
  activeCircle(minimum, maximum, xposition, yposition);
}
