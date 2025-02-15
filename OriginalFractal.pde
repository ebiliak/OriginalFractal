void setup() {
  size(600, 600);
  background(255);

 
  drawFractal(width / 1/5, height /1.4, 400);
}

void drawFractal(float x, float y, float size) {
  if (size < 2) {  // Base case: Stop when the circle is too small
    return;
  }
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(x, y, size, size);

  // Recursive calls to draw smaller circles around it
  drawFractal(x  , y, size / 2);
  drawFractal(x + size / 2, y + 1, size / 2);
  drawFractal(x-2, y - size / 2, size / 2);
  drawFractal(x+2, y - size / 2, size / 2);
}
