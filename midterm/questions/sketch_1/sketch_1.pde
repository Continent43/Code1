// the ellipse in this sketch currently grows forever.

// add a conditional that makes the ellipse grow only 
// until the diameter reaches the width of the canvas, 
// then makes it shrink until reaching 0, then grow 
// again, back and forth.

float d = 0;
float incr;

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(width/2, height/2, d, d);
  d += incr;
  
  if (d > width){
    incr = -5;
  }
  
  if (d < 1){
    incr = 5;
  }
  
  //if (d>600) {
  //  d -= incr;
  //} else if (d < 0) {
  //  d += incr;
  //}
}
