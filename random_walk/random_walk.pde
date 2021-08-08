
class Walker {
  int x;
  int y;
  int step_size = 1;
 
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  Walker(int _step_size) {
    x = width/2;
    y = height/2;
    step_size = _step_size;
    strokeWeight(step_size/2);
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    int choice = int(random(4));
    if (choice == 0) {
      x += step_size;
    } else if (choice == 1) {
      x -= step_size;
    } else if (choice == 2) {
      y += step_size;
    } else {
      y -= step_size;
    } 
  }
}

Walker w;

void setup() {
   size(1080, 720);
   w = new Walker(10);
}

void draw() {
  w.step();
  w.display();
}
