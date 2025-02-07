// Global scope - declaration of variables happens before setup
// Make sure all datatypes are the same

// * IDEA - Game with image perception

int circleSize; // Diameter
int numberOfCircles;
int x;
int y;
int counter = 0; // Iterator - Loop index that keeps track of the number of circles drawn horizontally
int rowCounter = 0; // For tracking rows in the grid 

// Color defining variables declared as float - requires 2 arguments returning a random floating point
float r;
float g;
float b;
float a;

void setup(){
  
   size(400,400);
   background(255);
}

void draw(){  

numberOfCircles = 30;

// Red, Green, Blue, Transparent - Floating point variables have their 2 arguments added (0,255) color scale
r = random(0,255);
g = random(0,255);
b = random(0,255);
a = random(0,255); // Transparency because I'm in need of excitement

// The circle size is determined by width of the screen divided by amount of circles to fit to screen 
circleSize = width/numberOfCircles;

// Draw first ellipse in the left corner of the canvas
  ellipseMode(CORNER);
  x = circleSize*counter;
  y = circleSize*rowCounter;
  noStroke();
  fill(r,g,b,a);
  ellipse(x,y,circleSize,circleSize);

// PINK - System variable frameCount contains nr 0 frames since program start
// In setup() value is 0 and during the first iteration of draw it is 1, looping and incrementing by +1
// Updates the counter based on the frameCount and numberOfCircles
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  
// The ternary operator - If the condition (frameCount % numberOfCircles == 0) is true, counter is set to 0 (this resets the counter).
// If the condition (frameCount % numberOfCircles == 0) is true, counter is set to 0 (this resets the counter).
// If the condition is false, counter is incremented by 1 (counter + 1).
// The counter resets to 0 every time the frameCount reaches a multiple of numberOfCircles, and otherwise, it increments by 1.
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
// Modulus is what is left when you divide one int with another int.

  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0
  
}
