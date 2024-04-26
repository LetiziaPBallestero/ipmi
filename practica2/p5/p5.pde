// zona de variables
// les pongo un valor inicial 
float ancho = 50;
float alto = 50;
float centroX; 
float centroY;
float elipseX; 
float elipseY;

void setup() {
  size(600, 600);  // Tamaño del lienzo
  
  
  

}

void draw() {
  // canva
  background(254,210,46);
  stroke (95,85,145);
  
  // lineas
  line(0, 0, elipseX, elipseY); // esq sup izq
  line(width, 0, elipseX, elipseY); // esq sup der 
  line(0, height, elipseX, elipseY); // esq inf izq
  line(width, height, elipseX, elipseY); // esq inf der
  
  // elipse
  fill(95,85,145);
  ellipse(elipseX, elipseY, 100, 100); 
  
  // Act de movimiento
  elipseX = mouseX;
  elipseY = mouseY;

}
