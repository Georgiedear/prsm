class Lollipop {
  float val;

  Lollipop() {
    val += 10;
  }

  void display() {
    noStroke();
    fill(0, 0, 0, 10);
    //    rect(0, 0, width, height);

    val+= 10;
    strokeWeight(5);
    stroke(random(200), random(170), random(200), 100);     
    //fill(random(255), 0, random(168), 40);
  }

  void rot() {

    pushMatrix();
    translate(width/2, height/2);        
    ellipseMode(CENTER);
    rotate(val);   
    arc(150,150, 50, 570, 0, radians(250));   

    popMatrix();
  }
}
