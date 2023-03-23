void setup(){
size(800,400);
}
 void draw(){
background(0,150,255);
fill(255,255,255);
stroke(255,255,255);
ellipse(50,160,150,50);
ellipse(150,160,150,50);
ellipse(250,160,150,50);
ellipse(330,160,150,50);
ellipse(50,100,150,50);
ellipse(150,100,150,50);
ellipse(250,100,150,50);
ellipse(330,100,150,50);
fill(0,200,0);
stroke(0,200,0);
rect(0,185,400,400);

stroke(0,0,0);
fill(255,255,255);
rect(160,180,8,50);
rect(169,180,90,8);
rect(260,180,8,50);

circle(210,300,30);
point(100,100,100);
PImage img;
img = loadImage("pelota.jpg");
image(img, 400,0,400,400);

 }
