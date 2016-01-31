// TARDIS & DOCTOR //
// BY: MARIA CAMPAGNA //
// CST 112 - Introduction to Programming //

//FLOAT VARIABES//
float tardisX, tardisY;
float dx, dy;
float lightR, lightG, lightB;

//SETTING UP THE SCENE//
void setup() {
  size(800,800,P3D);
  tardisX= 100;
  tardisY= 100;
  dx=100;
  dy=100;
  
  noStroke();
  smooth();
  frameRate(60);
  
}

void draw () {
  scene();
  tardis();
  tardismove();
  doctor();
  planet();
}

void doctor(){
//***DOCTOR WHO***//
{
  rectMode(CENTER);
}
//BODY
fill(128,75,23);
rect(mouseX, mouseY, 30, 100);
fill(181,118,54);
rect(mouseX, mouseY, 30,50);


//HEAD
fill(247,220,193);
ellipse(mouseX, mouseY-30, 60,60);

//HAT
fill(201,20,20);
rect(mouseX, mouseY-65, 30,20);

//EYES
fill(0);
ellipse(mouseX-19, mouseY-30, 16,16);
ellipse(mouseX+19, mouseY-30, 16,16);

//LEGS
stroke(150);
line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+100);
line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+100);
}


void scene(){
//BACKGROUND
  background(0);
  noStroke();
}

void planet(){  
//PLANET
  if (keyPressed)
   if (key =='P' || key == 'p') {
  noStroke();
  fill(255, 154,23);
  ellipse(200,200,180,180);
  fill(173,64,9,80);
  ellipse(200,200,300,10);
  }
}

void tardis() {
  
//***TARDIS***//

//LIGHT ON TOP//
/*Explanation of color randomness in windows & top light
Light R, G and B are all set to random
filling the light with random R, G and 
B values allowing the lights on top as 
well as the windows to cycle through 
different colors*/
{
  rectMode(CORNER); //setting different rect mode for this
}
  lightR = random(255);
  lightG = random(255);
  lightB = random(255);
  fill(lightR, lightG, lightB);
  rect(tardisX+65, tardisY-25, dx-90, dy-70);
  
//BODY
  fill(23,10,163); 
  rect(tardisX, tardisY, dx+50, dy+150);
  
//BLACK RECTANGLE
  fill(0);
  rect(tardisX+10, tardisY+5, dx+30, dy-75);
  
//WINDOWS
  lightR = random(255);
  lightG = random(255);
  lightB = random(255);
  fill(lightR, lightG, lightB);
  rect(tardisX+10, tardisY+45, dx-50, dy-30);
  rect(tardisX+90, tardisY+45, dx-50, dy-30);
  
  fill(255);
  rect(tardisX+10, tardisY+120, dx-50, dy-50);
  
//TOP DARK BLUE
  fill(23,10,163);
  rect(tardisX+60, tardisY-15, dx-80, dy-85);
  
//DOOR KNOB
  fill(255);
  ellipse(tardisX+95, tardisY+140, dx-80, dy-80);
}

//TARDIS MOVES UP

/*IF the Tardis's Y point is GREATER than the height, 
then the tardis Y is reset to 0 and the tardis x value 
is reset to somewhere random up to 500

In addition, the tardis moves down the screen due to the y 
point having 1 added to it's initial value*/

void tardismove (){
  if (tardisY > height) {
    tardisY=  0;
    tardisX=  random( 0, 600 );
  }
    tardisY=  tardisY + 1;
 }
