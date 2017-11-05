//Hello, wellcome back to Yogi D Mahandi Youtube Channel
//This tutorial is Generative Art again using Shape that 
//randomize shape. So, see the preview. 

//this is the simple way to make and generate shape as generative art

//thanks for watching. Please subscribe our channel :)

void setup() {  
  size(1366, 768);
}

void draw() {
  background(0);
  
  for (int i=0; i<10; i++) //how many shape what you make
  {
    fill(random(255), random(255), random(255), 120); //random color 
    noStroke();
    beginShape();
    vertex(random(width), random(height));//make 4 shapes
    vertex(random(width), random(height));//with random position
    vertex(random(width), random(height));//of their vertex
    vertex(random(width), random(height));
    endShape(CLOSE);
  }
  fill(255);
  text("Click to generate new shapes",width/2,20);
  noLoop();
}

void mousePressed()
{
  loop();
}

//that is the code. let's run the sketch