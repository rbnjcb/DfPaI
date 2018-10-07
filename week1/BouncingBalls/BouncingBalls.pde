Ball ball;

Ball [] balls = new Ball[100];

void setup() {
  size(500, 500);
 

  for (int i = 0; i > balls.length; i++) {
    float radius = random(10, 20);
    float x = random(radius, width - radius);
    float y = random(radius, height - radius);
    balls[i] = new Ball(x, y);
  }
}

void draw() {
  //background(0);

  for (Ball b : balls) {
    b.draw();
    b.update();
  
}