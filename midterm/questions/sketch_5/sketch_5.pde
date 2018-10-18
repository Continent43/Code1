// this sketch has a function supplied with two arguments 
// that draws a set of shapes to the screen. 

// currently the function is being supplied with the mouseX 
// and mouseY variables, which indicates the drawing should 
// move with the mouse, but it doesn't. fix the function so 
// that it properly uses the supplied arguments.

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(220);
  myDrawing(mouseX, mouseY);
}

void myDrawing(int mouseX, int mouseY) {
  noStroke();
  fill(112);
  ellipse(mouseX, mouseY, 200, 200);
  fill(138);
  rect(mouseX, mouseY, 140, 140);
  fill(160);
  ellipse(mouseX, mouseY, 140, 140);
  fill(178);
  rect(mouseX, mouseY, 95, 95);
  fill(200);
  ellipse(mouseX, mouseY, 95, 95);
}
