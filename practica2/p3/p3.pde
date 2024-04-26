// zona de variables
// les pongo un valor inicial 
float ancho = 50;
float alto = 50;
float centroX; 
float centroY;

void setup() {
  size(600, 600);  // Tamaño del lienzo
 background(218); 
  stroke (12);
  

}

void draw() {
  // canva
 
}
// the magic 

void mouseMoved() {
  line (pmouseX, pmouseY, mouseX, mouseY); 
}
