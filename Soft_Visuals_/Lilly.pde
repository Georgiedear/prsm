class Lilly {
  float val;

  Lilly() {
    val = 0;
  }

  void display() {
    noStroke();
    fill(0, 0, 0, 10);
    rect(0, 0, width, height);

   //  background(0);
     noStroke();
     fill(0, 0, 0, 10);
     rect(0, 0, width, height);

    val+= 400;
    strokeWeight(2);
    stroke(random(255), random(255), random(255), 80);     
    fill(random(255), 120, 255, 100);              
    println(val);
  }
  
  void lillyFade() {
 fill(0,0,0,10);
    rect(0, 0, width, height);

    
  }

  void rot() {

    pushMatrix();

    translate(width/2, height/2);        
    ellipseMode(CORNER);
    rotate(val);          
    ellipse(0, 0, 50, 400);   

    popMatrix();
  }
}
