// カメラの映像を描く

// カメラの映像を扱うためのライブラリをインポート
import processing.video.*;

// カメラ
Capture cam;

void setup() {
  fullScreen();
  //size(1000, 600);

  // カメラを初期化（おまじない。現時点で深い意味は考えなくてOK）
  cam = new Capture(this,width,height,Capture.list()[0],1);
  cam.start();
}

void draw() {
  // カメラが有効なら、映像を取り込む
  if (cam.available()) {
    cam.read();
  }

  background(0);

  // 映像を描く（カメラの映像は画像 PImage と同じように扱える）
  //image(cam, 0, 0);
  
  //反転して鏡にする
  copy(cam, 0, 0 , width , height, width, 0 , -width, height);
}
