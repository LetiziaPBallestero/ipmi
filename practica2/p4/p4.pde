
void setup() {
  size(600, 600);  // Tamaño del lienzo
  background(225, 251, 98);
}

void draw() {
  // canva

  stroke (95,85,145);
  
  // lineas
  line(0, 0, mouseX, mouseY); // esq sup izq
  line(width, 0, mouseX, mouseY); // esq sup der 
  line(0, height, mouseX, mouseY); // esq inf izq
  line(width, height, mouseX, mouseY); // esq inf der
 
}
