//hello... welcome back to my channell... 
//today we will build generative art again, with line and pvector. no, an object exacly... 
// this is the code, You can download from yogidwimahandi.blogspot.com :) 


//thanks for watching... don't forget to subscribe for more update. :)
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
  
  lingkaran.add(new bunder(random(width), random (height), 255,250, 250, 30)); //this is the variabel to chane the line color. R,G,B, Opacity/alpha
  if (lingkaran.size() >120)
  {
  lingkaran.remove(0); //this code make fade out the line. 
  //the last object will be removed from arraylist. and the opacity is low till zero and remove. 
  //run again. 
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

class bunder //this class make an object's properties. 
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
    strokeW=random(W); //use random
  }
}