/*
this sketch uses an incrementation variable to change the
color of a rectangle from black to white.

replace the incrementation approach with a color transition
based on a sin() function for a smoother cycle.

remember that sin() returns a value from -1 to 1.
*/

float incr = 1;
float r = 0;
float g = 0;
float b = 0;

void setup() {
  size(600, 600);
}

void draw() {
  if (r > 255 && r < 0 || g > 255 && g < 0 || b > 255 && b < 0) {
    incr = -incr;
  }
  r += incr;
  g -= incr;
  b += incr;
  
  fill(r,g,b);

  rect(100, 100, 400, 400);
}
