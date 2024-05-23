// COMISION 5
// Ballestero Letizia 
// --- ZONA DE VARIABLES ---- 
int PANTALLA; 
int tiempoInicio;
int intervalo = 30000;
// 60.000 = 1 minuto

// IMAGENES
PImage imagen1;
PImage imagen2;
PImage imagen3; 

// COLORES
// boton
color fondo = color (246,232,222);

color colorBoton = color(246,232,222);
color colorLineaBoton = color (203,187,215); 

color hoverColorBoton = color(203,187,215);
color hoverColorLineaBoton = color (203,187,215);

color colorTextoBoton = color (79,54,75); 
// TAMAÑOS 
// boton
int anchoBoton = 100; 
int altoBoton = 50; 
int ancho = 640;
int alto = 480; 

// POSICIONES 
// boton
int posBotonX = ancho/2 - anchoBoton/2;
int posBotonY = alto/2 - altoBoton/2;
int textoBotonX = posBotonX + anchoBoton/2;
int textoBotonY = posBotonY + altoBoton/2;

int posBoton2X = ancho/2 - anchoBoton/2;
int posBoton2Y = alto/2 - altoBoton/2 + 100;
int textoBoton2X = posBoton2X + anchoBoton/2;
int textoBoton2Y = posBoton2Y + altoBoton/2;

//texto 
int posicionTexto;
float transparencia;
int escala;
PFont fuente;


void setup() {
  // Set fondo 
  size(640, 480);  
  background(fondo); // Blanco roto 
  
  PANTALLA = 0; 
  tiempoInicio = millis();
 
  // Carga de imágenes
  imagen1 = loadImage("fondo1.jpg");
  imagen2 = loadImage("fondo2VALIDO.jpg");
  imagen3 = loadImage("fondo3.jpg");
  
  //Carga de fuentes
  fuente = loadFont("TrebuchetMS-48.vlw");
  textFont(fuente); 
  
  
  //efectos de los textos
  posicionTexto = ancho;
  transparencia = 255;
  escala = 5;
  
}

void draw() {
  if (PANTALLA == 0) {
    iniciar(); 
  } else if (PANTALLA == 1) {
    primerEscena();
  } else if (PANTALLA == 2) {
    segundaEscena();
  } else if (PANTALLA == 3) {
    terceraEscena();
  } else if (PANTALLA == 4) {
    cuartaEscena();
  }
}

// FUNCIONES DE ESCENA
void iniciar() {
  background(fondo);
  
  stroke(colorLineaBoton); 
  fill(colorBoton);
  rect(posBotonX, posBotonY, anchoBoton, altoBoton);
  hover1(); 
  
  textSize(25); 
  textAlign(CENTER, CENTER);
  fill(colorTextoBoton);
  text("Iniciar", textoBotonX, textoBotonY);   
 
  tiempoInicio = millis(); // reinicia el tiempo
}

void primerEscena() { 
  //fondo
  image (imagen1,0,0,ancho,alto);
  
  // texto
  fill (255);
  stroke(0);
  strokeWeight(2);   
  textSize(100); 
  textFont(fuente);
  
  text("Llega desde Japón:", posicionTexto , alto/2);
  posicionTexto -= 1;          
  // se va a mover de a 1 pixel hacia atrás   
  
  // transicion 
  if (millis() - tiempoInicio > intervalo) {
    PANTALLA++;
    tiempoInicio = millis(); // reinicia el tiempo
  }
}


void segundaEscena() { 
  image (imagen2,0,0,ancho,alto);
  
  // texto
  fill (255,255,255,transparencia);
  // modifico el canal alfa para hacer que se ponga más transparente
  stroke(0);
  strokeWeight(2);   
  textSize(50); 
  
  text("La historia de ", ancho/2 , alto/2-100);
  text("una gurisa japonesa", ancho/2 , alto/2);
  text("que pierde todo", ancho/2 , alto/2+100);
  transparencia -= 0.4;
         
  
  // transicion
  if (millis() - tiempoInicio > intervalo) {
    PANTALLA++;
    tiempoInicio = millis(); 
  }
}

void terceraEscena() { 
   image (imagen3,0,0,ancho,alto);
  
  // texto
  fill (255,255,255);
  // modifico el canal alfa para hacer que se ponga más transparente
  stroke(0);
  strokeWeight(2);   
  textSize(escala); 
  
  text("Una historia de café y libros", ancho/2-100 , alto/2-100);
  escala += 0.1;
  
   // transicion
  if (millis() - tiempoInicio > intervalo) {
    PANTALLA++;
  }
}

void cuartaEscena() { 
  background(fondo);
  
  stroke(colorLineaBoton); 
  fill(colorBoton);
  rect(posBoton2X, posBoton2Y, anchoBoton, altoBoton);
  
  hover2(); 
  fill(colorTextoBoton);
  textSize(25); 
  textAlign(CENTER, CENTER);
  
  text("Reiniciar", textoBoton2X, textoBoton2Y); 
}

// FUNCIONES DE UTILIDAD
// HOVERS, REVISAR 

void hover1() { 
  if (mouseX > posBotonX && mouseX < posBotonX + anchoBoton && mouseY > posBotonY && mouseY < posBotonY + altoBoton) {
    // con hover 
    fill(hoverColorBoton); 
    stroke(hoverColorLineaBoton); 

      } else { 
        // color normal 
        fill(colorBoton); 
        stroke(colorLineaBoton);
  }
  rect(posBotonX, posBotonY, anchoBoton, altoBoton);
} 
 
   
void hover2() {
    if (mouseX > posBoton2X && mouseX < posBoton2X + anchoBoton && mouseY > posBoton2Y && mouseY < posBoton2Y + altoBoton) {
    fill(hoverColorBoton); 
    stroke(hoverColorLineaBoton); 
    } else {
      fill(colorBoton); 
      stroke (colorLineaBoton);
    }
    rect(posBoton2X, posBoton2Y, anchoBoton, altoBoton);
} 


void mouseClicked() {
  // BOTON DE INICIAR
  if (mouseX > posBotonX && mouseX < posBotonX + anchoBoton && mouseY > posBotonY && mouseY < posBotonY + altoBoton){
    // dentro del cuadrado - hardcodeado 
      PANTALLA++; 
  } 
  // BOTON DE REINICIAR 
    if (mouseX > posBoton2X && mouseX < posBoton2X + anchoBoton && mouseY > posBoton2Y && mouseY < posBoton2Y + altoBoton){
    // dentro del cuadrado - hardcodeado 
      PANTALLA = 0; 
  } 
}
