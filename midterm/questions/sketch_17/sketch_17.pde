// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

float[] xPositions = new float[50];
float[] yPositions = new float[50];

void setup() {
  size(600, 600);
  background(100);
  for (int i=0; i < xPositions.length; i++) {
    xPositions[i] = width/2;
    yPositions[i] = height/2;
  }
 
}

void draw() {
  for (int i = 0; i<xPositions.length; i++) {
    ellipse(xPositions[i], yPositions[i], 50, 50);
    xPositions[i] += random(-5,5);
    yPositions[i] += random(-5,5);

    
  
  //ellipse(x,y, 50,50);
}
}
