/***********  SOUND ***************
 * Some computers are unable to play sounds. 
 * If you cannot play sound on this computer, set canPlaySounds to false.
 * To install ddf.minim:
 * 1. go to 'Tools' -> Add Tool -> select the 'Libraries' tab
 * 2. In the search box type 'minim'.
 * 3. Install 'Minin | An audio library...'
 * *****************/
boolean canPlaySound = true;

Rain rainfall;
Lightning lightning;
Spotlight spotlight;

// When you get to step 7 you can add new Pumpkins and ghosts below!
Pumpkin pumpkin1;
Pumpkin pumpkin2;
Pumpkin pumpkin3;
Pumpkin pumpkin4;
Pumpkin pumpkin5;
Pumpkin pumpkin6;
Ghost ghost1;
Ghost ghost2;
Ghost ghost3;
Ghost ghost4;


// ---------------------------------------------------------
// 1. Make a PImage variable for the scary house background
//    example: PImage scaryHouse
// ---------------------------------------------------------
PImage sHouse;


void setup() {
  // 2. Set the size of your sketch to at least 600, 400 using
  //    the size() method.
  size(1200,800);
  
  // 3. Pick a scary house and initialize it using loadImage,
  //    example: scaryHouse = loadImage("scaryHouse1.jpg");
  sHouse = loadImage("scaryHouse3.jpg");
  // 4. Resize your scary house to the window size using
  //    scaryHouse.resize(width, height);
  sHouse.resize(1200,800);
  
  
  // Pumpkin( x, pumpkinColor )
  pumpkin1 = new Pumpkin(580, #E26238);
    pumpkin2 = new Pumpkin(300, #E26438);
    pumpkin3 = new Pumpkin(790, #E26433);
      pumpkin4 = new Pumpkin(1030, #E26138);
  
  
  // Ghost( y, speed, flyingDirection )
  ghost1 = new Ghost(130, 9, "right");
    ghost2 = new Ghost(80, 12, "left");
  ghost3 = new Ghost(400, 16, "right");
 

      ghost4 = new Ghost(250, 4, "right");
  
  
  rainfall = new Rain();
  lightning = new Lightning();
  spotlight = new Spotlight();
}

void draw() {
  // 5. Call background() with your scary house as an input parameter
  background(sHouse);
  // 6. Call the drawFloor() method
  drawFloor();
  // 7. Call pumpkin1.draw(false) to draw a pumpkin.
  //    Can you figure out how to make the pumpkin bounce by changing
  //    the input parameter when calling draw()?
  //
  pumpkin1.draw(true);
    pumpkin2.draw(false);
      pumpkin3.draw(false);
        pumpkin4.draw(true);

  //    Make at least 2 more new pumpkins. To do this, create new pumpkin 
  //    variables above the setup() method and then initialize them
  //    in setup(). Remember to call their draw() methods here so they appear!

  // 8. Call ghost1.draw() to draw a ghost.
  ghost1.draw();
  ghost2.draw();
   ghost3.draw();
  ghost4.draw();
  //    Make at least 2 more new ghosts to fly across the screen.
  //    To do this, create new ghost variables above the setup() method 
  //    and then initialize them in setup(). Remember to call their draw()
  //    methods here so they appear!
  
  // 9. Call rainfall.draw( <rainColor> ) to add rain.
  rainfall.draw(#2BACDE);
  // 10. Display "Happy Halloween" somewhere on your display.
  //     *hint* you can use text(), textSize(), and fill()
  textSize(125);
  fill(#9B1113);
  text("Happy Halloween",78,100);
    text("Happy Halloween",80,101);
      text("Happy Halloween",82,102);
        text("Happy Halloween",84,103);
        text("Happy Halloween",86,104);
   
  // 11. Call lightning.draw() to draw some lightning;
  //     Can you make lightning crash only when the mouse is pressed?

  // Try out the other scary house backgrounds and customize
  // your scary house!
  
  
  
  
  
  
  
  
  
    spotlight.setPixelSize(5);
  spotlight.setSpotlightSize(250);
   spotlight.draw();
  
  
  // There are hidden spotlight and grayscale features in this
  // recipe. See if you can figure out how to use them...
  
  // ---------------------------------------------------------
  // Here are some other methods you can try:
  //  pumpkin1.setPumpkinColor();
  //  pumpkin1.setPumpkinStartHeight();
  //  pumpkin1.moveRight();
  //  pumpkin1.moveLeft();
  //  ghost1.setGhostTransparency();
  //  lightning.setLightningFlash();
  //  rainfall.setAmountOfRain();
  //  spotlight.setPixelSize();
  //  spotlight.setSpotlightSize();
  // ---------------------------------------------------------
}

void drawFloor(){
  int floorHeight = 30;
  
  push();
  
  fill( 10, 10, 30 );
  rect(0, height - floorHeight, width, floorHeight);
  
  pop();
} //<>//

// Call this method at the very bottom of the draw() method!
void drawGrayscale( boolean grayscaleEnabled ){
  if( grayscaleEnabled ){
    filter( GRAY  );    
  }
}
void mousePressed(){
    lightning.draw();
         spotlight.draw();
  
}
void keyPressed(){
 if(key == 'a'){
 pumpkin1.moveLeft(4);
 pumpkin2.moveLeft(4);
 pumpkin3.moveLeft(4);
 pumpkin4.moveLeft(4);
 
 }
  if(key == 'd'){
 pumpkin1.moveRight(4);
 pumpkin2.moveRight(4);
 pumpkin3.moveRight(4);
 pumpkin4.moveRight(4);
}
  if(key == ' '){
     pumpkin1.moveRight(0);
 pumpkin2.moveRight(0);
 pumpkin3.moveRight(0);
 pumpkin4.moveRight(0);
  }
}
