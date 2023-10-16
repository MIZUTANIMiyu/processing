//丁寧な字
PImage polite;
//走り書き
PImage rough;

void setup() {
  fullScreen();
  // size(1400, 800);
  background(255);

  polite = loadImage("polite.jpg");
  polite.resize( polite.width/2-100, polite.height/2-100);
  rough = loadImage("rough.jpg");
  rough.resize( rough.width/2, rough.height/2 );

  //初期状態の画像
  image(polite, (width-polite.width)/2, (height-polite.height)/2);
}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
  strokeWeight(5);
  stroke(0);
}

void keyPressed() {
  if (keyCode == LEFT ) {
    background(255);
    image(polite, (width-polite.width)/2, (height-polite.height)/2);
  } else if (keyCode == RIGHT) {
    background(255);
    image(rough, (width-rough.width)/2, (height-rough.height)/2);
  }
}

void draw() {
}
