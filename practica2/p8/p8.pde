void setup() {
  size(600, 600);
  background(192,135,216);
}

void draw() {
  noStroke();
}

void mouseClicked() {
  fill(124,163,233);
  ellipse(mouseX, mouseY, 50, 50);
}

void keyPressed() {
  fill(190,211,104);
  rectMode(CENTER);
  rect(mouseX, mouseY, 50, 50);
}
