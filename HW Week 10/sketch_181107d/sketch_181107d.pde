// code 1 FA 18
// bryan ma

// generative portrait 1

// this sketch, as well as w10_05_portrait2, uses the basic approach we used
// in class to create a generative representation of an image loaded into memory.
// use one of these two sketches as the starting point to create your own 
// generative graphic "portrait". try using red(), green(), blue(), saturation(), 
// hue(), and brightness() to get values to represent in your drawing.

// bonus - apply a class inspired by w10_03_paintbrush to your approach.
// instead of drawing a simple ellipse or other shape, create an instance 
// of the brushstroke class at every sourced point that you get() the color on.

// in the case of w10_05_portrait2, they would all need to be loaded into 
// an arraylist and drawn all together, as well as modified in order to have 
// a particle-like lifetime, or something similar.

PImage img;
Brushstroke b;

void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
}

void draw() {
  
  //fill(saturation(c));
  //fill(blue(c));
  if (frameCount % 5 == 0) {
      b = new Brushstroke(random(width), random(height));
    }
   //b = new Brushstroke(mouseX, mouseY);
  b.update();
  b.display();
  //ellipse(x,y,40,40);
}

class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;
  float c; 

  Brushstroke(float x, float y) {
    this.x = x;
    this.y = y;
    vx = random(-8, 8);
    vy = random(-8, 8);
    siz = random(30, 60);
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display() {
    int x = int(random(width));
  int y = int(random(height));
  color c = img.get(x, y);
  fill(c);
    //stroke(0);
    ellipse(x, y, siz, siz);
  }
}
