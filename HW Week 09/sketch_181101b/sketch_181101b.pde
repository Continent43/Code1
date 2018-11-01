// code 1 FA 18
// bryan ma

// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 

String[] arrayOfImageFilenames = new String[4]; //{ "sun.jpg", "sun1.jpg", "sun2.jpg", "sun3.jpg"};
PImage[] arrayOfPImages = new PImage[arrayOfImageFilenames.length];

void setup() {
  size(600,600);
  for (int i=0; i < arrayOfImageFilenames.length; i++) {
   arrayOfImageFilenames[i] = "sun" + i + ".jpg"; 
  }
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);  
  }
}

void draw() {
  
  for(int i = 0; i < arrayOfPImages.length; i++) {
    float x = map(i, 0, arrayOfPImages.length - 1, 0, width-100);
    image(arrayOfPImages[i], x, height/2, mouseX, mouseY);
  }
  
}
