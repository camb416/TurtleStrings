Grid g;
Turtle t;

void setup(){
 g = new Grid(width/5,height/5,5);
 t = new Turtle();
 size(1280,720);
 g.setup();
 //t.setup("F-F-F-F","F-FF--F-F", 30);
 t.setup("F-F-F-F","FF-F-F-F-FF",10);
 //t.setup("F-F-F-F","F-F+F+FF-F-F+F",5);
 //t.setup("FF", "F-FF-FF-F");
 background(255);
}
void draw(){

  g.draw();
    pushMatrix();
  translate(width/2-300,height/2+200);
  t.draw(7, 200);
  popMatrix();
}