//creates an image variable named godzilla
PImage godzilla;

//makes an image variable named fire
PImage fire;

//makes a yes or no variable named fire
boolean Fire = false;

//makes a yes or no variable named Godzilla
boolean Godzilla = false;

//makes a yes or no variable named ButtonCase
boolean ButtonCase = false;

//makes a numbered variable named moving
int moving = 0;

void setup()
{
  //makes the image variable "godzilla" connect to the file
  godzilla = loadImage ("godzilla.png");
  
  //makes the image variable "fire" connect to the file
  fire = loadImage ("spitten_fire.png");
  
  //sets the size of the window to be the entire screen
  fullScreen();
}

void draw()
{
  //sets the rectangles to heve the center be the base
  rectMode(CENTER);
 
  //sets the shapes to have no outline
  noStroke();
 
  //making the background
  background(210); //making the wall and counter light grey
  fill(100); //making the floor dark grey
  rect(width/2,height,width,height/4); //makeing the shape of the floor
  
  //makes the shadding that represents the corners of the wall
  strokeWeight(10); //makes a line thicker
  stroke(200); //has a shape's outer border be a light grey
  line(0,830,width,830); //makes a line that shows the edge of the wall
  line(0,1000,width,1000); //makes a line that shows the edge of the counter
  
  //sets the shapes to have no outline
  noStroke();
  
  //making the button
  fill(150); //makes the platform of the button grey
  rect(width/2,height/2,200,80); //makes the shape the platform
  fill(200,0,0); //makes the button color red
  rect(width/2,height/2.06,100,40); //makes the middle shape of the button
  strokeWeight(1);//makes the line around shapes be a thickness of 1 pixel
  stroke(0); //makes it so there is an outline on the top of the button
  ellipse(width/2,height/2.1,100,40); //makes the top of the button
  noStroke(); //makes the bottom of the button have no outline
  ellipse(width/2,height/2.02,100,40); //makes the bottom of the button circulaire
  
  //makes the window
  fill(255); //makes a white color for the base
  rect(width/2,height/3.5,850,550); //makes the base shape to have the outside be white
  fill(0,200,230,50); //makes the color of the window (using the RGB scale) (the forth color is the fade)
  rect(width/2,height/3.5,800,500); //makes the shape of the window
  
  //making the buildings in the background through the window
  fill(150); //sets the color of the shapes below to be "150" or mid-grey
  rect(1200,645,130,250); //makes a rectangle that represents a building
  rect(1480,600,120,210); //makes a rectangle that represents another building
  fill(160); //makes the shapes below a light/mid-grey
  rect(1600,530,100,200); //makes a rectangle that represents a building
  
  //make an if variable that...
  if(Godzilla == true)
  {
    //makes a delay of 1
    delay(1);
    
    //makes the godzilla move forward in his path of "destruction"
    moving += 10;
    
    //sets the image to bee at 500 down and 500 to the right
    image (godzilla,moving+960,370,500,400);
    
    //makes a delay for godzilla spitting fire
    delay(700);
    
    //makes the fire variable true or false changing dependant on the delay above
    Fire = !Fire;
    
    //sets the delay back to zero for all the other code
    delay(1);
    
    //makes an if statment to determine if the godzilla is spitten' straight fire or not
    if(Fire == true)
    {
      //shows the image named fire
      image (fire,moving+1252,435,100,100);
    }
  }
  
  //making the front buildings in the window
  fill(200);
  rect(width/2.56,670,200,200);
  fill(180);
  rect(1400,650,180,245);
  rect(1688,654,160,235);
  
  if(ButtonCase == false)
  {
    //sets the rectangles to heve the center be the base
    rectMode(CENTER);
    
    fill(0,150,200,30);
    rect(width/2,height/2,250,150);
    fill(0,150,200,50);
    rectMode(CORNERS);
    quad(1273,800,1463,800,1493,837,1243,837);
  }
  
   if(ButtonCase == true)
  {
    rectMode(CORNERS);
    fill(0,150,200,60);
    quad(1277,825,1457,825,1492,850,1242,850);
    fill(0,150,200,30);
    quad(1242,700,1492,700,1457,725,1277,725);
    fill(0,150,200,40);
    rect(1277,725,1457,825);
    fill(0,150,200,50);
    quad(1242,700,1277,725,1277,825,1242,850);
    quad(1457,725,1492,700,1492,850,1457,825);
  }
  //makes the godzilla dissapear after the window
  rectMode(CORNERS);
  fill(210);
  rect(width/1.537,height/4.3,width,height/2.3);
  rectMode(CENTER);
  fill(255);
  rect(width/1.537,height/3.3,25,480);
}

void keyPressed()
{
  if( key == 'h')
  {
    ButtonCase = !ButtonCase;
  }
}

void mousePressed()
{
  if(ButtonCase == true  && mouseX > 1317 && mouseX < 1417 && mouseY > height/2.1 - 20 && mouseY < height/2.02 + 20)
  {
    Godzilla = true;
  }
}







  
/**
start off within a science lab looking out through a window
press the h key to open the case on the big red button
then press the big red button with your mouse to summon godzilla
which you can see through the window
*/
