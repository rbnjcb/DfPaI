
size(500, 500);
background(0);

loadPixels();

for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    int pos = x+y*width;
    pixels[pos] = color(x/2,y/2,160);
  }
}

updatePixels();
