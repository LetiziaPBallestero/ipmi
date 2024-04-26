// zona de variables
float circX , circY; 
color colorcito; 

void setup () {
  size (600,600);
  colorcito = color(177,201,244);
    circX = width / 2;
  circY = height / 2;
}

void draw() {
  background(232,225,212); 
  //dibujar figura
  noStroke();
  fill (colorcito);
  ellipseMode(CENTER);
  ellipse (circX, circY, 50,50); 
  
  // mov 

  
}

void mouseMoved() {
  // Mover la figura hacia arriba cuando el ratón se mueve hacia abajo
  // y hacia abajo cuando el ratón se mueve hacia arriba
  if (mouseY < pmouseY) {
    circY += 5;
  } else if (mouseY > pmouseY) {
    circY -= 5;
  }
  
    if (mouseX < pmouseX) {
    circX += 5;
  } else if (mouseX > pmouseX) {
    circX -= 5;
  }
} 


void mouseClicked() {
  // Cambiar el color de la figura a azul cuando se hace clic
  colorcito = color(177,201,244);
}

void keyPressed() {
    colorcito = color(245,170,134);
}
