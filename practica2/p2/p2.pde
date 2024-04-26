// zona de variables
// les pongo un valor inicial 
float ancho = 50;
float alto = 50;
float centroX; 
float centroY;

void setup() {
  size(600, 600);  // Tamaño del lienzo
  // independientemente de mi lienzo en pantalla, estoy posicionando 
  // el circulo o whatever en el centro 
  centroX = width / 2;  
  centroY = height / 2; 

}

void draw() {
  // canva
  background(254,249,198); 
  
  // the magic 
  // actualiza los distintos ejes segun el mov
  // map(valor, inicioRango1, finRango1, inicioRango2, finRango2)
  ancho = map(mouseX, 0, width, 0, 600);
  alto = map(mouseY, 0, height, 0, 600);
  
  // colorcitos
  noStroke();
  fill(247,209,14); // Relleno rojo
 //dibujando ando 
  ellipse(centroX, centroY, ancho, alto);
}
