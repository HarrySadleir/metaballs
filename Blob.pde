class Blob {
  int r;
  float vx = random(-8,8);
  float vy = random(-8,8);
  float x = width/2+random(-200, 200);
  float y = height/2+random(-200, 200);
  
  Blob() {
   r = 10;
  }
  
 void show() {
   fill(0,0);
   stroke(255,0);
   ellipse(x, y, r*2, r*2);
 }
 
 void act() {
   x += vx;
   y += vy;
   
   if(x+r>width || x-r<0) {
     vx*= -1;
   } 
   
   if(y+r>height || y-r<0) {
     vy*= -1;
   } 
 }
}