ArrayList<Blob> blobs;

void setup() {
  size(600, 600);
  colorMode(HSB);
  loadPixels();
  
  blobs = new ArrayList<Blob>();
  
  for(int i = 0; i < 10; i++) {
    blobs.add(new Blob());
  }
}

void draw() {
  background(0);

  for (int x = 0; x<width; x++) {
    for (int y = 0; y<height; y++) {
      float c = 0;
      for(Blob b : blobs) {
       c +=  500* b.r/dist(x,y, b.x,b.y);
      
      }
      
      
      pixels[x+y*width] = color(constrain(c, 0, 220), 255, 255);
      
    }
    
  }
  updatePixels();
  for(Blob b : blobs) {
    b.show();
    b.act();
  }
}