Particle[] particles = new Particle[300];
oddBall weirdo = new oddBall();
void setup(){
 size(800,800); 
  for(int i = 0; i < particles.length; i++){
   particles[i] = new Particle(); 
  }
}

void draw(){
  background(0);
  for(int i = 0; i < particles.length; i++){
   particles[i].move();
   particles[i].show();
  } 
  weirdo.move();
  weirdo.show();
}

class Particle{
  color c;
  double x,y,speed,angle;
  int w,h;
  Particle(){
    c = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    x = 400;
    y = 400;
    speed = Math.random()*10+10;
    angle = Math.random()*(2*Math.PI);
    w = 10;
    h = 10;
  }
  void move(){
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
    if((x > 800) || (y > 800) || (x < 0) || (y < 0)){
     x = 400;
     y = 400;
     speed = Math.random()*10+10;
     angle = Math.random()*(2*Math.PI);
    }
  }
  void show(){
    fill(c);
    ellipse((int)x,(int)y,w,h);
  }
}

class oddBall extends Particle{
  oddBall(){
    c = color(255,0,0);
    x = 400;
    y = 400;
    speed = Math.random()*10+10;
    angle = Math.random()*(2*Math.PI);
    w = 30;
    h = 30;
  }
}

