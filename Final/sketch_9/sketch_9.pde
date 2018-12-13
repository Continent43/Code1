/*
this sketch draws an ellipse that has a 25% chance of 
moving up, left, down or right.

use arrays to create a group of these 'random walkers'
instead of only displaying one. replace the position 
variables with arrays and loop to give them values, 
increment their positions, and draw their corresponding 
ellipses.
*/

//float xPos;
//float yPos;
float[] xPos = new float[20];
float[] yPos = new float[20];

void setup() {
  size(600, 600);
  //xPos = width/2;
  //yPos = height/2;
  frameRate(15);
  background(125);
  for(int i =0; i< xPos.length; i++){
    xPos[i] = random(0,200) + 10 * i;
    yPos[i] = random(0,200) + 10 * i;
  }
}

void draw() {
  
  for(int i =0; i< 20; i++){
    ellipse(xPos[i], yPos[i], 10, 10);
  }

  float r = random(4);

for(int i = 0; i< 20; i++){
  if (int(r) == 0) {
    xPos[i] += 5;
  } else if (int(r) == 1) {
    xPos[i] -= 5;
  } else if (int(r) == 2) {
    yPos[i] += 5;
  } else if (int(r) == 3) {
    yPos[i] -= 5;
  }
}
} 
