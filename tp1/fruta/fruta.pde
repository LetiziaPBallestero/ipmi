PImage img; 

void setup () { 
  size (400,800); 
  img = loadImage("paltaDeVerdad.jpg"); 
} 


void draw () {
  background (30); 
  
  image(img,0,364); 
  
  fill (56,134,88);
  noStroke();
  ellipse (200,190,200,300);
 
  fill (148,209,81);
  noStroke();
  ellipse (200,190,190,290);
  
  fill (231,246,109);
  noStroke();
  ellipse (200,190,170,270);
  
  fill (185,101,72);
  stroke (139,69,49);
  circle (200,230,100);
}

void mouseClicked () { 
  print ("Y: "); println (mouseY); 
  print ("X: "); println (mouseX);
} 
