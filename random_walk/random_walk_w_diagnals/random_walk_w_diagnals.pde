
class Walker {
  float x;
  float y;
  int step_size = 1;
 
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  Walker(int _step_size) {
    x = width/2;
    y = height/2;
    step_size = _step_size;
    strokeWeight(3 * step_size / 4);
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float dx = random(-1, 1) * step_size;
    float dy = random(-1, 1) * step_size;
    x += dx;
    y += dy;
  }
}

Walker w;

void setup() {
   size(1080, 720);
   w = new Walker(7);
}

void draw() {
  w.step();
  w.display();
}
