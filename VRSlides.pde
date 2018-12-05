import processing.video.*;

int numStrings = 38;
int numScreens = 6;
int numPages = 9;

Movie mov;
String[] words = new String[numStrings];
PGraphics[] pg = new PGraphics[9];
int local;
float ypos, xpos;
PFont amydor, groundControl, groundControl2, macho, strawberryMuffins, tabarroLight, tabarroNarrowLight, tabarroNarrowLight2, vinegarStroke, xacoseItalic, xacose, zedSaid; 

int currentScreen;
int textInputSize;
PImage image1, image2;
int boxStartX = 400;
int boxStartY = 100;
int margin = 50;
int textStart = boxStartX + margin;
int boxWidth = 1200;//basically the width/2
int boxHeight = 900;
int textWidth = boxWidth - margin;
int textHeight = boxHeight - margin;


color turq = color(103, 201, 198);


 
void setup() {
  //size(displayWidth, displayHeight, P3D);//1920, 1080
  size(1920, 1080, P3D);
  noStroke();
  smooth();
  frameRate(30);
  background(0);
  loadStrings();
  loadFonts();
  currentScreen = 0;

  textInputSize = 60;
  
  mov = new Movie(this, "quilt_450pixels.mp4");
  for (int i = 0; i< numPages; i++){
    pg[i] = createGraphics(1920, 1080, P3D);
  }

  image1 = loadImage("proj4.png");
  image2 = loadImage("proj5.png");
  ypos = -image1.height;
  xpos = random(width);

}
 
void draw() {

  println("currentScreen: "+ currentScreen);
  switch(currentScreen) {
  case 0: drawScreenMain(); break;
  case 1: drawScreenZero(); break;
  case 2: drawScreenOne(); break;
  case 3: drawScreenTwo(); break;
  case 4: drawScreenThree(); break;
  case 5: drawScreenFour(); break;
  default: background(0); break;
  }

  if (currentScreen > numScreens) { currentScreen = 0; }
}
 
void mousePressed() {
  background(0);
  if (mousePressed&&(mouseX>width/2)&&(mouseY<height/2)){
    currentScreen++;
    if (currentScreen > numScreens) { currentScreen = 0; }
      background(0);
      redraw();
      loop();
  } else if (mousePressed&&(mouseX<width/2)&&(mouseY<height/2)){
    currentScreen--;
    if (currentScreen < 0) { currentScreen = 0; }
      background(0);
      redraw();
      loop();
  }
    
}

void drawScreenMain(){
  image(image1, 0, 0, width, height);
  pg[0].beginDraw();
  //pg[0].background(0);
  //pg[0].textSize(textInputSize);
  pg[0].textFont(tabarroNarrowLight2);
  pg[0].noStroke();
  for(int i=0; i<15; i++){
    color pixelColor = image1.get(mouseX+(i*15), mouseY+(i*15));
    pg[0].fill(pixelColor, (i*5));
    pg[0].textAlign(CENTER);
    String title = "SOUNDSTACK";
    int strLength = title.length();
    pg[0].text("SOUNDSTACK", (width/2-((strLength*textInputSize*3)/2))+(i*5), height/6+(i*15), width, boxHeight);
  }
  pg[0].smooth(8);
  pg[0].endDraw();

  image(pg[0], 0, 0, width, height);
  
  
}


void drawScreenZero() {
  
  pg[1].beginDraw();
  pg[1].background(0, 5);
  pg[1].textSize(textInputSize);
  pg[1].textFont(groundControl);
  pg[1].text(words[0], boxStartX, boxStartY + margin, boxWidth, boxHeight);

  pg[1].textSize(textInputSize);
  pg[1].textFont(groundControl);
  pg[1].fill(turq);
  pg[1].textAlign(LEFT);
  int words1 = words[1].length();
  pg[1].text(words[1], boxStartX, boxStartY + margin*5, words1*textInputSize/2, boxHeight);
  pg[1].endDraw();

  image(image2, xpos, ypos, image2.width/10, image2.height/10);
  image(pg[1], 0, 0, width, height);
  
  
  if(ypos<height+image2.height/10){
    ypos+=5;
  } else {
    ypos=-image2.height/10;
    xpos =random(-50, width);
  }
    
}

void drawScreenOne(){

  pg[2].beginDraw();
  pg[2].background(0, 5);
  pg[2].textSize(textInputSize/2);
  pg[2].textFont(zedSaid);
  pg[2].fill(turq);
  pg[2].text(words[3], boxStartX/2, boxStartY, words[3].length()*textInputSize, boxHeight);
  pg[2].fill(255);
  pg[2].text(words[4], boxStartX/2, boxStartY+margin*2, words[4].length()*textInputSize, boxHeight);
  pg[2].text(words[5], boxStartX/2, boxStartY+margin*4, words[5].length()*textInputSize, boxHeight);
  pg[2].text(words[6], boxStartX/2, boxStartY+margin*6, words[6].length()*textInputSize, boxHeight);
  pg[2].text(words[8], boxStartX/2, boxStartY+margin*10, words[8].length()*textInputSize, boxHeight);
  pg[2].text(words[9], boxStartX/2, boxStartY+margin*12, words[9].length()*textInputSize, boxHeight);
  pg[2].endDraw();

  image(image1, xpos, ypos, image1.width/7, image1.height/7);
  image(pg[2],0,0, width, height);
  
  if(ypos<height+image1.height/7){
    ypos+=5;
  } else {
    ypos=-image1.height/7;
    xpos =random(-50, width);
  }
   
}


void drawScreenTwo() {
  
  pg[3].beginDraw();
  pg[3].background(0, 5);
  pg[3].textFont(zedSaid);
  pg[3].fill(turq);
  pg[3].text(words[10], boxStartX/2, boxStartY, words[10].length()*textInputSize, boxHeight);
  pg[3].fill(255);
  pg[3].text(words[11], boxStartX/2, boxStartY+margin*2, words[11].length()*textInputSize, boxHeight);
  pg[3].text(words[12], boxStartX/2, boxStartY+margin*4, words[12].length()*textInputSize, boxHeight);
  pg[3].text(words[13], boxStartX/2, boxStartY+margin*6, words[13].length()*textInputSize, boxHeight);
  pg[3].text(words[14], boxStartX/2, boxStartY+margin*8, words[14].length()*textInputSize, boxHeight);
  pg[3].text(words[15], boxStartX/2, boxStartY+margin*10, words[15].length()*textInputSize, boxHeight);
  pg[3].endDraw();
  
  image(image2, xpos, ypos, image2.width/10, image2.height/10);
  image(pg[3],0,0, width, height);
  
  if(ypos<height+image2.height/10){
    ypos+=15;
  } else {
    ypos=-image2.height/10;
    xpos =random(-50, width);
  }
    
}
 


//Why write code
void drawScreenThree() {
  pg[4].beginDraw();
  pg[4].background(0, 5);
  pg[4].textFont(zedSaid);
  pg[4].fill(turq);
  pg[4].text(words[16], boxStartX/2, boxStartY, words[16].length()*textInputSize, boxHeight);
  pg[4].fill(255);
  pg[4].text(words[17], boxStartX/2, boxStartY+margin*2, words[17].length()*textInputSize, boxHeight);
  pg[4].text(words[18], boxStartX/2, boxStartY+margin*4, words[18].length()*textInputSize, boxHeight);
  pg[4].text(words[19], boxStartX/2, boxStartY+margin*6, words[19].length()*textInputSize, boxHeight);
  pg[4].endDraw();
  
  image(mov, xpos, ypos, mov.width/2, mov.height/2);
  image(pg[4],0,0, width, height);
  
  if(ypos<height+mov.height/2){
    ypos+=5;
  } else {
    ypos=-mov.height/2;
    xpos =random(-50, width);
  }
  mov.loop();
    
  
}
//Interactivity
void drawScreenFour() {
  pg[5].beginDraw();
  pg[5].background(0, 5);
  //pg[3].textSize(textInputSize/2);
  pg[5].textFont(zedSaid);
  pg[5].fill(turq);
  pg[5].text(words[20], boxStartX/2, boxStartY, words[16].length()*textInputSize, boxHeight);
  pg[5].fill(255);
  pg[5].text(words[21], boxStartX/2, boxStartY+margin*2, words[17].length()*textInputSize, boxHeight);
  pg[5].text(words[22], boxStartX/2, boxStartY+margin*4, words[18].length()*textInputSize, boxHeight);

  pg[5].endDraw();
  
  image(image2, xpos, ypos, image2.width/5, image2.height/5);
  image(pg[5],0,0, width, height);
  
  if(ypos<height+image2.height){
    ypos+=5;
  } else {
    ypos=-image2.height;
    xpos =random(-50, width);
  }

}

void movieEvent(Movie m){
  m.read();
}
