class Carnation {
  float val;

  Carnation() {
    val+=10;
  }

  void display() {
    noStroke();
    fill(0, 0, 0, 10);

    val+= 10;
    strokeWeight(2);
    stroke(random(255), random(255), random(255), 80);     
    fill(255, 0, random(255), random(40));        
    fill(255, 0, random(255), 40);
  }

  void rot() {

    pushMatrix();
    translate(width/2, height/2);        
    ellipseMode(CORNER);
    rotate(val);          
    ellipse(0, 0, 50, 350);   

    popMatrix();
  }
}
