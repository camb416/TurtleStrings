class Grid{
  int w,h,s;
 Grid(int _w, int _h, int _s){
   w = _w;
   h = _h;
   s  = _s;
   println("constructor");
 // empty constructor  
 }

 void setup(){
  println("setting up grid"); 
 }
 void draw(){
   stroke(212);
   noFill();
   // verticals
   for(int i=0;i<w;i++){
      line(i*s, 0, i*s, height); 
   }
   // horizontals
   for(int i=0; i<h; i++){
    line(0, i*s, width,i*s); 
   }
 }
 
}