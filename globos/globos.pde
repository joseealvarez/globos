PImage cara;
class Globo
{
  color c;
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c = color(random(100,255), random(100,255), random(0,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill(c);
      strokeWeight(3);
      triangle(x,y+50, x-10,y+70, x+10, y+70);
      ellipse(x,y,80,120);
      imageMode(CENTER);
      image(cara,x,y,50,70);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(1902,1080);
  globos = new ArrayList<Globo>();  
  cara = loadImage("images.jpeg");
}

void draw()
{
  background(100,200,255);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
