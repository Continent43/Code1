class Line{
 float x;
 float y;
 float x2;
 float y2;
 
 Line(float x, float y){
   this.x = x;
   this.y = y;
   x2 = random(0,60);
   y2 = 1;
   stroke(255);
 }
 
 void display(){
   
   line(x,y,x2,y2);
   
 }
 
 void update(){
   translate(1,0);
   
 }
  
}
