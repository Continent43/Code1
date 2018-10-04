//I would like to create a clock
//Firstly I will create an ellipse of size that will fill majority of 1080x640 canvas and fill it with a light red on a light gray background
//Then I will create points around the radius of the clock starting from the ones that are in the middle of the circle
//Then I will create time indicators for minutes and hours from lines and finish them with a triangle to make it look like an arrow


void setup(){
  size (1080, 640);
}

void draw(){
  background(200);
  strokeWeight(2);
  fill(250,50,50);
  ellipse(540, 320, 500, 500);
  
  
  strokeWeight(7);
  point(650, 130); //1
  point(730, 210); //2
  point(760, 320); //3
  point(730, 430); //4
  point(650, 510); //5
  point(540, 540); //6
  point(430, 510); //7
  point(350, 430); //8
  point(320, 320); //9
  point(350, 210); //10
  point(430, 130); //11
  point(540, 100); //12
  
  strokeWeight(22);
  point(540,320); //center
  strokeWeight(13);
  line(540, 320, 540, 430);
  strokeWeight(8);
  triangle(560, 430, 540, 470, 520 , 430);
  strokeWeight(7);
  line(540, 320, 400, 235);
  strokeWeight(5);
  triangle(390,245,370,220,405,220);
  
  
}
