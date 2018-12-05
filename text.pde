/*You need to have a set of slides that lists the developers(s), 
credits to other sources, 
who did what, 
an overview of the project, 
detail list of features, 
detail list of bugs/issues, 
and what you would change or do to extend if you had time (and some funding). 
Have this ready to show folks during the presentation. 
Most (if not all) will not want to see it, but sometimes 
someone will ask a question that you may want to jump to a slide or two that has the answer.


*/


void loadStrings(){
  
  words[0] = ("Developers:");
  words[1] = ("Taylor Hedum & Amy Traylor"); 
  words[2] = ("The goal was to make a world filled with procedurally generated sounds and interactable objects that could be manipulated to create more sound as more of an experiential art piece than a game. "); 
  words[3] = ("Credits & Assets:"); 
  words[4] = ("Original World, Game Mechanics: Taylor Hedum"); 
  words[5] = ("SteamVR Integration: Amy Traylor"); 
  words[6] = ("Original Video, Procedural Forms, Procedural Music: Amy Traylor"); 
  words[7] = ("Music Notes: Taylor Hedum");
  words[8] = ("Procedural Music: Chunity @ http://chuck.stanford.edu/chunity/");
  words[9] = ("Unity Tutorials by Sebastian Lague and Brackey's");
  words[10] = ("Features:"); 
  words[11] = ("Art Mode: Experiential Exploration in Generative World");
  words[12] = ("Interactable Forms that play notes, music, and trigger more falling forms ");
  words[13] = ("Forms can be moved, stacked, thrown");
  words[14] = ("Video augmented textures and skybox");
  words[15] = ("Procedural Music with Chunity");
  words[16] = ("If Money Solved Problems ");
  words[17] = ("Our mission was not to outsource assets & use skills of the team members");
  words[18] = ("Money would buy more interesting controllers and faster computers");
  words[19] = ("And another set of components/computer so we could work simultaneously");
  words[20] = ("Bugs");
  words[21] = ("Player still not on ground");
  words[22] = ("Notes not playing as expected");
}

void loadFonts(){
  textInputSize = 60;
  amydor = createFont("amydor.ttf", textInputSize);
  groundControl = createFont("GroundControl_FREE_FOR_PERSONAL_USE_ONLY.ttf", textInputSize*1.33);
  groundControl2 = createFont("GroundControl_FREE_FOR_PERSONAL_USE_ONLY.ttf", textInputSize*3.33);
  macho = createFont("MACHO.ttf", textInputSize);
  strawberryMuffins = createFont("Strawberry Muffins Demo.ttf", textInputSize);
  tabarroLight = createFont("TabarraPro-Light-FFP.ttf", textInputSize);
  tabarroNarrowLight = createFont("TabarraPro-NarrowLight-FFP.ttf", textInputSize);
  tabarroNarrowLight2 = createFont("TabarraPro-NarrowLight-FFP.ttf", textInputSize*3);
  vinegarStroke = createFont("Vinegar Stroke.ttf", textInputSize);
  xacoseItalic = createFont("Xacose Italic.otf", textInputSize);
  xacose = createFont("Xacose.otf", textInputSize);
  zedSaid = createFont("Zed Said.otf", textInputSize*0.7);
}
