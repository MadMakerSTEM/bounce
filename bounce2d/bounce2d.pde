/* Bounce2d

Description: Bounces a ball on both the x and y axes inside
a window

Author: Owen Brasier 
Date: August 2015
http://challenge.madmaker.com.au 

*/

int x = 220, y = 95;                // make integers x and y, start positions
int xspeed = 3;                     // make xspeed 
int yspeed = 4;

void setup() {
  size(400, 400);      
  fill(255, 0, 0);
}

void draw() {
  background(0);
  x = x + xspeed;                   // move x
  y = y + yspeed;                   // move y
  if((x >= width) || (x <= 0)) {    // check if we hit x edge, if so change x direction
    xspeed = -xspeed;
  }
  if((y >= height) || (y <= 0)) {   // check if we hit y edge, if so change y direction
    yspeed = -yspeed;
  }
  ellipse(x, y, 25, 25);            // draw the ball
}