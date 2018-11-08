PImage img;
import processing.pdf.*;
boolean saveOneFrame = false;

void setup() {
  size(900, 600);
  img = loadImage("mountain.jpg");
  background(255);
  noStroke();
  frameRate(24);
}

void draw() {
   if(saveOneFrame == true) {
    beginRecord(PDF, "Line.pdf"); 
  }
  
  for(int i = 0; i < img.width; i+=3) {
    for(int j = 0; j < img.height; j+=3) {
      color c = img.get(i, j);
      fill(c);
      //fill(blue(c));
      //fill(green(c));
      ellipse(i, j, 3, 3);
    }
  }
  //line(mouseX, 0, width-mouseY, height);
  
  if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }

}

void mousePressed() {
  saveOneFrame = true; 
}
