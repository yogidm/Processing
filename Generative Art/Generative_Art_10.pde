//Hello, wellcome back to Yogi D Mahandi Youtube Channel
//This tutorial is Generative Art again using Shape that 
//randomize shape. So, see the preview. 

//this is the simple way to make and generate shape as generative art

//thanks for watching. Please subscribe our channel :)
ArrayList<anu> Anu = new ArrayList<anu>();
void setup() {  
  size(1366, 768);
}

void draw() {
  background(0);
for (int i=0; i<127; i++)
{
Anu.add(new anu(random (width), random(height)));
}
  for (int i=0; i<120; i++) //how many shape what you make
  {
    fill(random(255), random(255), random(255), 120); //random color 
    noStroke();
    beginShape();
    vertex(Anu.get(i).titik.x, Anu.get(i+2).titik.y);//make 4 shapes
    vertex(Anu.get(i+1).titik.x, Anu.get(i).titik.y);//with random position
   vertex(Anu.get(i+2).titik.x, Anu.get(i+6).titik.y);//of their vertex
    vertex(Anu.get(i+6).titik.x, Anu.get(i+1).titik.y);
    endShape(CLOSE);
  }
  fill(255);
  text("Click to generate new shapes", width/2, 20);
  noLoop();
}

void mousePressed()
{Anu.clear();
  loop();
}


class anu
{
  PVector titik;

  anu(float x, float y)
  {
    titik = new PVector(x, y);
  }
}