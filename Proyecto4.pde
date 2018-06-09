import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;

int numPixeles;
int threshold;

PGraphics masking0,masking1,masking2,masking3;

PImage original,textura0,textura00, textura1,textura11,textura2,textura22,textura3,textura33,textura4,textura44;
PImage textura5,textura55,textura6,textura66,textura7,textura77,textura8,textura88,textura9,textura99,textura10,textura1010;
OpenCV opencv, opencv1,opencv2,opencv3,opencv4,opencv5,opencv6,opencv7,opencv8,opencv9,opencv10,opencv11;

ArrayList<Contour> contours;

void setup(){
  textura00 = loadImage("0.png"); 
  textura11 = loadImage("1.png");
  textura22 = loadImage("2.png");
  textura33 = loadImage("3.png");
  textura44 = loadImage("4.png");
  textura55 = loadImage("5.png"); 
  textura66 = loadImage("6.png");
  textura77 = loadImage("7.png");
  textura88 = loadImage("8.png");
  textura99 = loadImage("9.png");
  size (640,480);
  smooth();
  
  video = new Capture (this,width,height,30);
  opencv1 = new OpenCV(this, 640, 480);
  opencv2 = new OpenCV(this, 640, 480);
  opencv3 = new OpenCV(this, 640, 480);
  opencv4 = new OpenCV(this, 640, 480);
  opencv5 = new OpenCV(this, 640, 480);
  opencv6 = new OpenCV(this, 640, 480);
  opencv7 = new OpenCV(this, 640, 480);
  opencv8 = new OpenCV(this, 640, 480);
  opencv9 = new OpenCV(this, 640, 480);
  opencv10 = new OpenCV(this, 640, 480);
  video.start();
  numPixeles = video.width * video.height;
}

void draw(){
  background(255);
  if (video.available()){
  video.read();
  }
  opencv1.loadImage(video);
  opencv2.loadImage(video);
  opencv3.loadImage(video);
  opencv4.loadImage(video);
  opencv5.loadImage(video);
  opencv6.loadImage(video);
  opencv7.loadImage(video);
  opencv8.loadImage(video);
  opencv9.loadImage(video);
  opencv10.loadImage(video);
  
  opencv1.gray();
  opencv1.threshold(100);
  textura1 = opencv1.getOutput();
  textura00.mask(textura1);
  
  opencv2.gray();
  opencv2.threshold(90);
  textura2 = opencv2.getOutput();
  textura11.mask(textura2);
  
  opencv3.gray();
  opencv3.threshold(80);
  textura3 = opencv3.getOutput();
  textura22.mask(textura3);
  
  opencv4.gray();
  opencv4.threshold(70);
  textura4 = opencv4.getOutput();
  textura33.mask(textura4);
  
  opencv5.gray();
  opencv5.threshold(60);
  textura5 = opencv5.getOutput();
  textura44.mask(textura5);
  
  opencv6.gray();
  opencv6.threshold(50);
  textura6 = opencv6.getOutput();
  textura55.mask(textura6);
  
  opencv7.gray();
  opencv7.threshold(40);
  textura7 = opencv7.getOutput();
  textura66.mask(textura7);
  
  opencv8.gray();
  opencv8.threshold(30);
  textura8 = opencv8.getOutput();
  textura77.mask(textura8);
  
  opencv9.gray();
  opencv9.threshold(20);
  textura9 = opencv9.getOutput();
  textura88.mask(textura9);
  
  opencv10.gray();
  opencv10.threshold(10);
  textura10 = opencv10.getOutput();
  textura99.mask(textura10);
  image(textura99, 0, 0);
  image(textura88, 0, 0);
  image(textura77, 0, 0);
  image(textura66, 0, 0);
  image(textura55, 0, 0);
  image(textura44, 0, 0);
  image(textura33, 0, 0);
  image(textura22, 0, 0);
  image(textura11, 0, 0);
  image(textura00, 0, 0);
}
