// FEATURE USED: Incrementing Shortcut (+=)

//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var sunX = 50;          // x position of the sun
var sunSpeed = 1;      // speed of the sun (animation)
var cloudX = 600;      // x position of the cloud

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  // Sky background
  background(135, 206, 235);
  
  // Ground
  fill(80, 200, 120);
  rect(0, 300, 600, 100);
  
  // Sun (animated)
  fill(255, 204, 0);
  ellipse(sunX, 80, 60, 60);
  
  // Move the sun using increment shortcut
  sunX += sunSpeed;
  
  // Reset sun when it leaves screen
  if (sunX > 650) {
      sunX = -50;
  }
  
  // Cloud
  fill(255, 255, 255);
  ellipse(cloudX, 100, 60, 40);
  ellipse(cloudX + 30, 100, 60, 40);
  ellipse(cloudX + 15, 80, 60, 40);
  
  // Move cloud
  cloudX -= 0.5;
  if (cloudX < -100) {
      cloudX = 650;
  }
  
  // Playground pole
  stroke(120, 60, 0);
  line(100, 200, 100, 300);
  
  // Show x y values when mouse pressed
  if(mousePressed){
      showXYPositions();
  }
}


showXYPositions = function(){
    fill(255,255,255,200);
    rect(470,320,150,100,10);
    fill(0,0,0);
    textSize(20);
    text("x = " + mouseX + "\ny = " + mouseY, 490, 360);
    fill(255, 255, 255);
    ellipse(mouseX, mouseY, 10, 10);
}
