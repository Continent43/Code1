// Code 1 FA_18
// Bryan Ma

// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.

int numShapes = 500;
float[] x = new float[numShapes];
float[] y = new float [numShapes];
int i;
void setup() {
  size(600, 600);
  noStroke();
  background(0);
  for (int i = 0; i < x.length; i++) {

    x[i] = random(width);
  }

  for (int i = 0; i < y.length; i++) {

    y[i] = map(i, 0, y.length, width/2-100, width/2+100);
  }
  
  for (int i = 0; i < x.length; i++){
    x[i] -= 1;
  }
  
  

}


void draw() {
  for (int i = 0; i < x.length; i++) {
    float siz = map (i, 0, x.length, 300, 10);

    ellipse(x[i], height/2, siz, siz);
    fill(random(200), random(50), random(250));
  }
  
  x[i] -=map(i, 0, x.length, 1, 10);
  
  
}
