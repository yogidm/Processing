ArrayList<bunder> lingkaran = new ArrayList<bunder>();
void setup()
{

  size(1366, 768);
  smooth();
}

void draw()
{
  background(#FADE81);
  text("Generative Art #8", 50, 50);
  text("Yogi D. Mahandi Youtube Channel", 50, 70);
  text("Please Subscribe...", 50, 90);
  text("Click to clear screen", width/2, 730);


  if ( mousePressed ) {
    lingkaran.clear();
  }
  
  lingkaran.add(new bunder(random(width), random (height), 255, 255, 255, 30));
  if (lingkaran.size() >120)
  {
  lingkaran.remove(0);
  }
  for (int i=1; i<lingkaran.size(); i++)
  {
    //noStroke();
    strokeWeight(lingkaran.get(i).strokeW);
    stroke(lingkaran.get(i).r, lingkaran.get(i).g, lingkaran.get(i).b, i);
    line(lingkaran.get(i-1).dot.x, lingkaran.get(i-1).dot.y, lingkaran.get(i).dot.x, lingkaran.get(i).dot.y);
  //  ellipse(lingkaran.get(i).dot.x, lingkaran.get(i).dot.y, random(100), 80);
  }
}

class bunder
{
  PVector dot;
  int idDot ;
  float r, g, b,strokeW;
  
  bunder(float x, float y, float R, float G, float B, float W)
  {
    r=random(R);
    g=random(G);
    b=random(B);
    dot = new PVector(x, y);
    strokeW=random(W);
  }
}