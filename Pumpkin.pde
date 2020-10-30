public class Pumpkin {
  private int x;
  private int y;
  private int xSpeed = 0;
  private int bounceSpeed = int(random(10));
  private float gravity = int(random(2));
  private int pumpkinColor;
  private int pumpkinSizePixels = 150;
  private int glowingEyesColor = color(321 + random(49), 214 + random(49), random(255));
  private int greenStemColor = #2EA22D;

  public Pumpkin( int x, int pumpkinColor ) {
    this.x = x;
    this.y = height - 300;
    this.pumpkinColor = pumpkinColor;
  }

  public void setPumpkinColor( int newColor ){
    this.pumpkinColor = newColor;
  }

  // ---------------------------------------------------------
  // Call this method from the setup() method,
  // NOT the draw() method
  // ---------------------------------------------------------
  public void setPumpkinStartHeight( int newHeightInPixels ){
    this.y = newHeightInPixels;
  }
  
  public void moveRight( int speed ){
    this.xSpeed = speed;
  }
  
  public void moveLeft( int speed ){
    this.xSpeed = -speed;
  }

  public void draw(boolean bounce) {
    push(); 

    bounceSpeed += gravity;
    y += bounceSpeed ;

    if (this.y > height - 100) {
      this.y = height - 100;

      if ( bounce ) {
        bounceSpeed = -bounceSpeed;
      }
    }
    
    this.x += xSpeed;
    
    if( this.x > width + this.pumpkinSizePixels ){
      this.x = 0 - this.pumpkinSizePixels;
    }
    if( this.x < 0 - this.pumpkinSizePixels ){
      this.x = width;
    }

    ellipseMode(CENTER);

    // Black outline
    stroke(0);
    strokeWeight(2);

    // Draw top stem
    fill(greenStemColor);
    rect(x - 10, y - (pumpkinSizePixels/2) - 20, 15, 20);

    // Draw body
    fill(pumpkinColor);
    ellipse(x, y, pumpkinSizePixels, pumpkinSizePixels);

    // Set glowing eyes
    fill(glowingEyesColor, random(200) + 50 );  

    // Draw eyes
    triangle(x-30, y-20, x-20, y, x-40, y);
    triangle(x+30, y-20, x+20, y, x+40, y);
    triangle(x, y, x+10, y+20, x-10, y+20);

    // Draw shadow
    ellipse(x, height - 15, (150 * y) / height, (10 * y) / height);

    // Draw mouth
    arc(x, y + 30, 80, 80, 0, PI, 0);
    line(x - 40, y + 30, x + 40, y + 30);

    // Draw tooth  
    fill(this.pumpkinColor);
    rect(x + 10, y + 30, 10, 15);

    // Clear the top outline of the tooth
    strokeWeight(3);
    stroke(this.pumpkinColor);
    fill(this.pumpkinColor);
    line(x + 12, y + 30, x + 17, y + 30);

    pop();
  }
}
