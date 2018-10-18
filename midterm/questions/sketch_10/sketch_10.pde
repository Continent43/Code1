// currently the sketch draws random white points
// all over the canvas. 

// change the values being given to x and y so that 
// the white points are only drawn inside the black rectangle.

void setup() {
  size(600, 600);
  background(50);
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 400, 200);
}

void draw() {
  float x = random(100, 500);
  float y = random(200, 400);
  stroke(255);
  point(x, y);
}
