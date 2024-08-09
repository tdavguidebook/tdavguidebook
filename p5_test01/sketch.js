let shapes = [];

function setup() {
  createCanvas(800, 600);
  noStroke();
  
  // Create a set of shapes with random properties
  for (let i = 0; i < 20; i++) {
    shapes.push(new BouncingShape(random(width), random(height), random(20, 50), random(2, 5), random(2, 5)));
  }
}

function draw() {
  background(20);
  
  // Update and display each shape
  for (let shape of shapes) {
    shape.update();
    shape.display();
  }
}

// Class for a bouncing shape
class BouncingShape {
  constructor(x, y, size, xSpeed, ySpeed) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.color = color(random(255), random(255), random(255), random(100, 200));
    this.angle = random(TWO_PI);
    this.rotationSpeed = random(-0.05, 0.05);
  }

  update() {
    // Update position
    this.x += this.xSpeed;
    this.y += this.ySpeed;
    
    // Bounce off the edges
    if (this.x < this.size / 2 || this.x > width - this.size / 2) {
      this.xSpeed *= -1;
    }
    if (this.y < this.size / 2 || this.y > height - this.size / 2) {
      this.ySpeed *= -1;
    }
    
    // Update color and size
    this.size += sin(frameCount * 0.05) * 0.5;
    this.color = color((red(this.color) + 1) % 256, (green(this.color) + 2) % 256, (blue(this.color) + 3) % 256, alpha(this.color));
    
    // Update rotation
    this.angle += this.rotationSpeed;
  }

  display() {
    fill(this.color);
    push();
    translate(this.x, this.y);
    rotate(this.angle);
    ellipse(0, 0, this.size * 2);
    pop();
  }
}
