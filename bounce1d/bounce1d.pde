/* Bounce1d

Description: Makes a ball move along the x axis in the middle 
of the screen, and changes direction when it hits and edge.

Author: Owen Brasier 
Date: August 2015
http://challenge.madmaker.com.au 

*/

int x = 0;                          // set x initial position
int speed = 3;                      // speed of x

void setup() {
  size(400, 400);                   // create a window
  fill(255, 0, 0);                  // make the ball colour red
}

void draw() {
  background(0);
  x = x + speed;                    // move the ball
  if((x >= width) || (x <= 0))      // check if it hits an edge
    speed = -speed;                 // change direction
  ellipse(x, height/2, 25, 25);     // draw ball (x, y, width, height)
}