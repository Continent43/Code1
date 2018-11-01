// code 1 FA 18
// bryan ma

// this code is adapted from the Processing example "Sequential" by James Paterson.
// this sketch loads in 12 separate images into an array of PImages, then plays
// them sequentially in the draw loop.

// i will explain the "%" operator in class.

// create your own image sequence. 
// then change the sketch to load in and display your image sequence.

// once you've done this, adapt the image sequence to be part of a class behavior.
// imagine the "Mario" object we've discussed in class - animating a character 
// like that could be done in this way - creating the class to contain an array 
// of images, and having the class's display method cycle through the frames.  

int numFrames = 12;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
Anim anime;

void setup() {
  size(640, 360);
  frameRate(24);
  imageMode(CENTER);
  anime = new Anim();
} 

void draw() { 
  background(0);
  anime.update();
  anime.display();
}

class Anim {
  float x, y;
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Anim() {
    numFrames = 4;
    currentFrame = 0;
    frames = new PImage[numFrames]; 

    frames [0] = loadImage("sun.jpg");
    frames [1] = loadImage("sun1.jpg");
    frames [2] = loadImage("sun2.jpg");
    frames [3] = loadImage("sun3.jpg");
  }



  void display() {
    image(frames[currentFrame], width/2, height/2);
  }
  void update() {
    currentFrame = (currentFrame+1) % numFrames;
  }
}
