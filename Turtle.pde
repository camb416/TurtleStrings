class Turtle {
  float x, y;
  float x0, y0;
  float rot;
  float r0;
  String s;
  String ps;
  float scale;
  int drawCount;
  int r;
  Turtle() {
  }
  void setup(String _ps, String _s, float _scale) {
    
    x = y = rot = 0;
    x0 = y0 = r0 = 0;
    s = _s;
    ps = _ps;
    scale = _scale;
  }
  void drawChild(int _r, float _scale) {
    String _str = (r>0) ? ps : s; 
    for (int i=0; i<_str.length(); i++) {
      //println(s.charAt(i)); 
      switch(_str.charAt(i)) {
      case 'F':
        if (_r == 0) {
          drawForward(_scale);
        } else {
          drawChild(_r-1, _scale/2);
        }
        break;
      case '-':
      if(_r == 2){
       //println("!"); 
      }
        turnLeft();
        break;
      case '+':
        turnRight();
        break;
      default:
        // do nothing
        break;
      }
    }
  }
  void drawParent(int _r, float _scale) {
    String _str = ps;
    for (int i=0; i<_str.length(); i++) {
      //println(s.charAt(i)); 
      switch(_str.charAt(i)) {
      case 'F':
        if (_r == 0) {
          drawForward(_scale);
        } else {
          drawChild(_r-1, _scale/2);
        }
        break;
      case '-':
      if(_r == 2){
       //println("!");  //<>//
      }
        turnLeft();
        break;
      case '+':
        turnRight();
        break;
      default:
        // do nothing
        break;
      }
    }
  }
  void draw(int _r, float _scale) {
    drawCount = 0;
    // two forwards
    drawParent(_r, _scale);
    //println("d: " + drawCount);
    //drawForward();
    //drawForward();
    //turnLeft();
    //drawForward();
    //turnRight();
    //drawForward();
    x = x0;
    y = y0;
    rot = r0;
  }
  void turnLeft() {
    rot -= 90;
  }
  void turnRight() {
    rot += 90;
  }
  void drawForward(float _scale) {
    drawCount++;
    float x2 = x + _scale*cos(rot/180.0f*PI); 
    float y2 = y + _scale*sin(rot/180.0f*PI);
    
    if(abs(x2-x)<1.0f) x2 = x;
     if(abs(y2-y)<1.0f) y2 = y;
    
    stroke(0);
    noFill();
    line(x, y, x2, y2);
    x = x2;
    y = y2;
  }
}