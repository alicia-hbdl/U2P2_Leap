import de.voidplus.leapmotion.*;
LeapMotion leap;
import processing.sound.*;
SoundFile file;

int size = 200;
PImage CamilleM;
PImage CamilleL;
PImage Lauranne;
PImage Maelle;
PImage Marine;
PImage MarieD;
PImage MarieX;
PImage Ophelie;
PImage Julie;
PImage Eloise;
PImage Chloe;
PImage CamilleS;
PImage Laure;
PImage Margaux;
PImage Pauline;
PImage Lucie;
PImage Emma;
PImage Anaelle;
PImage Vedika;
PImage Jeanne;
PImage Morgane;
PImage CamilleT;
PImage Juliette;
PImage Clemence;
float x = 0;
float y = 0;
float x2=2520;
float Y = 0;
float X = 2520;
float X2 = 0;

void setup()
{
  file = new SoundFile(this, "LeapMotion.mp3");
  file.play();
  size(1050, 700);
  y = 100;
  Y = 400;
  background(0);
  leap = new LeapMotion(this).allowGestures(); 
  leap = new LeapMotion(this).allowGestures("swipe");
  CamilleM = loadImage("CamilleM.jpg");
  CamilleL = loadImage("CamilleL.jpg");
  Lauranne = loadImage("Lauranne.jpg");
  Maelle = loadImage("Maelle.jpg");
  Marine = loadImage("Marine.jpg");
  MarieD = loadImage("MarieD.jpg");
  MarieX = loadImage("MarieX.jpg");
  Ophelie = loadImage("Ophélie.jpg");
  Julie = loadImage("Julie.jpg");
  Eloise = loadImage("Eloise.jpg");
  Chloe = loadImage("Chloe.jpg");
  CamilleS = loadImage("CamilleS.jpg");
  Laure = loadImage("Laure.jpg");
  Margaux = loadImage("Margaux.jpg");
  Pauline = loadImage("Pauline.jpg");
  Lucie = loadImage("Lucie.jpg");
  Emma = loadImage("Emma.jpg");
  Anaelle = loadImage("Anaelle.jpg");
  Vedika = loadImage("Vedika.jpg");
  Jeanne = loadImage("Jeanne.jpg");
  Morgane = loadImage("Morgane.jpg");
  CamilleT = loadImage("CamilleT.jpg");
  Juliette = loadImage("Juliette.jpg");
  Clemence = loadImage("Clemence.jpg");
}

void leapOnSwipeGesture(SwipeGesture g, int state)
{
  background(0);
  float speed = g.getSpeed()*0.0005*g.getDirection().x;
  x+= speed;
  x2+= speed;
  X+=-speed;
  X2+=-speed;
}


void draw()
{
  if (x+2520<0)
  {
    x= x2+2520;
  }
  if (x2+2520<0)
  {
    x2= x+2520;
  }
  if (x+10>width)
  {
    x = x2-2520;
  }
  if (x2+10>width)
  {
    x2 = x-2520;
  }

  if (X+2520<0)
  {
    X= X2+2520;
  }
  if (X2+2520<0)
  {
    X2= X+2520;
  }
  if (X+10>width)
  {
    X = X2-2520;
  }
  if (X2+10>width)
  {
    X2 = X-2520;
  }
  background(0);
  image(CamilleM, x+10, y, size, size);
  image(CamilleL, x+220, y, size, size);
  image(Lauranne, x+430, y, size, size);
  image(Maelle, x+640, y, size, size);
  image(Marine, x+850, y, size, size);
  image(MarieD, x+1060, y, size, size);
  image(MarieX, x+1270, y, size, size);
  image(Ophelie, x+1480, y, size, size);
  image(Julie, x+1690, y, size, size);
  image(Eloise, x+1900, y, size, size);
  image(Juliette, x+2110, y, size, size);
  image(Clemence, x+2320, y, size, size);
  image(Chloe, x2+10, y, size, size);
  image(CamilleS, x2+220, y, size, size);
  image(Laure, x2+430, y, size, size);
  image(Margaux, x2+640, y, size, size);
  image(Pauline, x2+850, y, size, size);
  image(Lucie, x2+1060, y, size, size);
  image(Emma, x2+1270, y, size, size);
  image(Anaelle, x2+1480, y, size, size);
  image(Vedika, x2+1690, y, size, size);
  image(Jeanne, x2+1900, y, size, size);
  image(Morgane, x2+2110, y, size, size);
  image(CamilleT, x2+2320, y, size, size);

  image(Anaelle, X+10, Y, size, size);
  image(CamilleL, X+220, Y, size, size);
  image(CamilleS, X+430, Y, size, size);
  image(CamilleM, X+640, Y, size, size);
  image(Chloe, X+850, Y, size, size);
  image(Clemence, X+1060, Y, size, size);
  image(Eloise, X+1270, Y, size, size);
  image(Emma, X+1480, Y, size, size);
  image(Jeanne, X+1690, Y, size, size);
  image(Julie, X+1900, Y, size, size);
  image(Juliette, X+2110, Y, size, size);
  image(Lauranne, X+2320, Y, size, size);
  image(Laure, X2+10, Y, size, size);
  image(Lucie, X2+220, Y, size, size);
  image(Maelle, X2+430, Y, size, size);
  image(Margaux, X2+640, Y, size, size);
  image(MarieD, X2+850, Y, size, size);
  image(MarieX, X2+1060, Y, size, size);
  image(Marine, X2+1270, Y, size, size);
  image(Morgane, X2+1480, Y, size, size);
  image(Ophelie, X2+1690, Y, size, size);
  image(Pauline, X2+1900, Y, size, size);
  image(Vedika, X2+2110, Y, size, size);
  image(CamilleT, X2+2320, Y, size, size);
}