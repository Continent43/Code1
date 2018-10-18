// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

float[] xPositions = new float[100];
float[] yPositions = new float[100];

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(50);
  }
  for (int i = 0; i < yPositions.length; i++) {
    yPositions[i] = random(100);
  }
}

void draw() {
  ellipse(xPositions[],yPositions[], 50,50);
}
