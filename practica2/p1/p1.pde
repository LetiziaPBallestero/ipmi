// zona de variables 
float circuloEnX; // pos en X 
float circuloEnY; // pos en Y 

void setup() {
size(400, 400);  
}
  
void draw () {
  background(129, 206, 234); 
  circuloEnX = mouseX;
  circuloEnY = mouseY;
  fill(231,243,245);
  noStroke();
  ellipse(circuloEnX, circuloEnY, 50, 50);
  // posX , posY , longX , longY
}
  
