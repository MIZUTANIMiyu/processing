//表示にラグのあるペン

void setup() {
  size(1200, 1000);
  background(255);
}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
  strokeWeight(10);
  stroke(0);
}

void draw() {
  delay(3000);
}
