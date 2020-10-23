colony [] redBact; 
colony [] blueBact; 
void setup() { 
  size(400,400);
  background(215);
  redBact = new colony[100]; 
  blueBact = new colony[100]; 
  for (int i=0;i<100;i++){
  redBact[i] = new colony(30, 30, 255);
  blueBact[i] = new colony(370, 370, 0); 
  }
}
void draw() {
  background(215); 
  for (int i=0;i<100;i++) {
  redBact[i].move(); 
  redBact[i].show(); 
  blueBact[i].move(); 
  blueBact[i].show();
  }
}
class colony { 
  int myX, myY, myColor;
  colony(int x, int y, int colour) {
    myX = x; 
    myY = y;
    myColor = colour; 
  }
  void move() {
    if (rightOrLeft == true) {
    if (mousePressed == true && (mouseButton == LEFT)) {
      if(mouseX > myX)
       myX = myX + (int)(Math.random()*10)-2;
     else
       myX = myX + (int)(Math.random()*10)-6;
       if(mouseY > myY)
       myY = myY + (int)(Math.random()*10)-2;
     else
       myY = myY + (int)(Math.random()*10)-6;  
    }
    else {
      myX = myX + (int)(Math.random()*5)-2; 
      myY = myY + (int)(Math.random()*5)-2;
    }
    }
    if (rightOrLeft == false) {
    if (mousePressed == true && (mouseButton == RIGHT)) {
       if(mouseX > myX)
       myX = myX + (int)(Math.random()*10)-2;
     else
       myX = myX + (int)(Math.random()*10)-6;
       if(mouseY > myY)
       myY = myY + (int)(Math.random()*10)-2;
     else
       myY = myY + (int)(Math.random()*10)-6;
    }
    else {
      myX = myX + (int)(Math.random()*5)-2; 
      myY = myY + (int)(Math.random()*5)-2;
    }
   }
  }
  void show() { 
    noStroke(); 
    fill(myColor); 
    ellipse(myX,myY,20,20); 
  }
}
