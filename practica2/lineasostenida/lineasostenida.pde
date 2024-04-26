// zona de variables
// les pongo un valor inicial 

void setup() {
  size(600, 600);  // Tamaño del lienzo
  background(198,212,225); 
  stroke (11,25,86);
  

}

void draw() {
  // canva
 
}
// the magic 

void mouseDragged() {
  line (pmouseX, pmouseY, mouseX, mouseY); 
}

void keyPressed() {
  background(random(255), random(255), random(255));
}
