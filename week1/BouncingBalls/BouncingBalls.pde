class Ball {
  PVector pos, vel;
  float radius;
  float x;
  float y;

  Ball (float x, float y, float _radius) {
    pos = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3));
    radius = _radius;//better way to do this ??
  }

  void update() {

    pos.add(vel);

    if (pos.x < radius || pos.x > width - radius) {
      pos.x *= -1;
    }
    if (pos.y < radius || pos.y > height - radius) {
      vel.y *= -1;
    }
  }

  void draw() {
    ellipse(pos.x, pos.y, radius, radius);
  }
}


Ball[] balls = new Ball[100];

void setup() {
  size(500, 500);

  for (int i = 0; i < balls.length; i++) {
    float radius = random(10, 20);
    float x = random(radius, width - radius);
    float y = random(radius, height - radius);
    balls[i] = new Ball(x, y, radius);
  }
}

void draw() {
  background(0);

  for (Ball b : balls) {
    b.update();
    b.draw();
  }
}
