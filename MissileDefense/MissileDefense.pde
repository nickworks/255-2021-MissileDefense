
Player thePlayer;
GameObject background;

// this function is called exactly once:
void setup() {
  size(700, 800); // set size of window

  thePlayer = new Player();
  background = new GameObject( loadImage("space.png") );
  background.position.x = width/2;
  background.position.y = height/2;
}

// This function is called every 1/60th of a second.
// We will use it to create the "Game Loop" design pattern.
// Each time this function is called, we can think of it as a "tick".
void draw() {

  // === CALC TIME ===
  // Calculate how much time has passed since the previous tick.

  // === PROCESS INPUT ===
  // Get all input from devices.

  // === UPDATE ===
  // Update all game objects

  // This is essentially the "Update" design pattern:
  thePlayer.update();


  // === DRAW ===
  // Render all game objects
  background(0);
  background.draw();
  thePlayer.draw();
}

PImage GetRandomAsteroidImage() {
  PImage img = null;

  int num = (int)random(0, 3);
  switch(num) {
  case 0:
    img = loadImage("asteroid1.png");
    break;
  case 1:
    img = loadImage("asteroid2.png");
    break;
  case 2:
  default:
    img = loadImage("asteroid3.png");
    break;
  }
  return img;
}
