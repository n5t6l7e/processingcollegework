PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
int x,y,myWidth, myHeight, gap;

void setup() {
  background(255);
  size(490,490);
  
  myWidth = 150;
  myHeight = myWidth;
  gap = 10;
  x = 10;
  y = 10; 

img =loadImage("images/img7.JPG");
img.filter(POSTERIZE, 255);

img2 =loadImage("images/img7.JPG");
img2.filter(GRAY);

img3 =loadImage("images/img7.JPG");
img3.filter(INVERT);

img4 =loadImage("images/img7.JPG");
img4.filter(BLUR,40);

img5 =loadImage("images/img7.JPG");
img5.filter(OPAQUE);

img6 =loadImage("images/img7.JPG");
img6.filter(ERODE);

img7 =loadImage("images/img7.JPG");
img7.filter(THRESHOLD);

img8 =loadImage("images/img7.JPG");
img8.filter(DILATE);

img9 =loadImage("images/img7.JPG");


}
void draw() {
  x = 10;
  y = 10;
  
  for(int i=0; i<150; i++){
    fill(150);
    rect(x,y,myWidth,myHeight);
    x=x+myWidth+gap;
    
    if (x>width){
      y=y+myHeight+gap;
      x=10;
    }
  }
  image(img,40,40,100,100);
  image(img2,195,40,100,100);
  image(img3,360,40,100,100);
  image(img4,40,195,100,100);
  image(img5,195,195,100,100);
  image(img6,360,195,100,100);
  image(img7,40,360,100,100); 
  image(img8,195,360,100,100);
  image(img9,360,360,100,100);
  
  
}




//
