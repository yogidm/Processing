//Hello... 
//welcome back to Yogi D Mahandi :)

//Now we will make Ellipse Generative Art
//Generative Art in Processing #6 :)
//Run... 

//like an eye... hihihi...
//it's simply to make it. 
//using random and noise.

float nz,ny; //variable noise
void setup()
{
size (480,360);
}
void draw()
{
background(0);
nz=nz+.002; //set noise value
ny=ny+.009;
float h = noise(nz)*height; //save noise to variable
float w = noise(ny)*width;
stroke(255,150,50);
noFill();
ellipse(width/2,height/2,random(w-50),random(h-50));
ellipse(width/2,height/2,w,random(h));
ellipse(width/2,height/2,random(w),h);
stroke(255,0,250);
ellipse(width/2,height/2,random(w),random(h));
stroke(255);
ellipse(width/2,height/2,w,h);
//code to make ellipse. :) 
}

//finish... thanks for watching... :)
//Don't remember to subscribe... 
