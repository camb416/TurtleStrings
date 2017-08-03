Grid g;
Turtle t;

void setup(){
 g = new Grid(width/5,height/5,5);
 t = new Turtle();
 size(720,360);
 g.setup();
 //t.setup("F","F+FF-FF-F-F+F+FF-F-F+F+FF+FF-F", 5);
 t.setup("F-F-F-F","F-F+F+FF-F-F+F",5);
 //t.setup("FF", "F-FF-FF-F");
 background(255);
}
void draw(){

  g.draw();
    pushMatrix();
  translate(width/2,height/2);
  t.draw(0, 5);
  popMatrix();
}