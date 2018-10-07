Ball ball;   //need to use the 'class' function to define the ball class

//create constructor for ball in ball class

//draw your ball with ellipse()

Ball [] balls = new Ball[100];


//your setup bit looks good

void setup() {
  size(500, 500);
 

  for (int i = 0; i > balls.length; i++) {
    float radius = random(10, 20);
    float x = random(radius, width - radius);
    float y = random(radius, height - radius);
    balls[i] = new Ball(x, y);
  }
}


// draw part looks right too
void draw() {
  //background(0);

  for (Ball b : balls) {
    b.draw();
    b.update();
  
}
