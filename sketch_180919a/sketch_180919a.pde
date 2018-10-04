float x = 20;
float sizeSpeed = 10;
float rotationAngle = 2;


void setup(){
  size(500,300);
  background(0);
}

void draw(){
 float red = random(0,250);
 float blue = random(0,250);
 float green = random(0,250);
 translate(width/2, height/2);
 fill(red, blue, green);
 rotate(radians(rotationAngle ++));
 rect(0,0,x,x); 
 //fill(red, blue, green);
 x = x + sizeSpeed;
 
 if (x > 75) {
  sizeSpeed = -2;
 }
 
 if (x < 10){
  sizeSpeed = 2; 
 }
 
 
 //else if (x 
}
