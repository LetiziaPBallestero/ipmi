// zona de variables
color colorcito; 


void setup() {
 size(600, 600);  // Tamaño del lienzo
 background(240); 

 colorcito = color(12);
  

}

void draw() {
  // canva
  stroke(colorcito);
 
}
// the magic 

void mouseMoved() {
  line (pmouseX, pmouseY, mouseX, mouseY); 
}

void mouseClicked() {
  // Cambiar el color de la figura a azul cuando se hace clic
  colorcito = color(177,201,244);
}

void keyPressed() {
    colorcito = color(245,170,134);
}
