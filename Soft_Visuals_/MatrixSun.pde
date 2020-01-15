class MatrixSun {
  float val;

  MatrixSun() {
    val = 0;
  }

  void display() {
    //  noStroke();
    // fill(0, 0, 0, 40);
    // rect(0, 0, width, height);

    val+= 3*30;
    strokeWeight(3);
    stroke(random(255), 212, 66, 170);     
    //fill(random(255), 0, random(168), 40);
  }

  void rot() {

    pushMatrix();
    translate(width/2, height/2);        
    ellipseMode(CENTER);
    rotate(val);          
    ellipse(0, 0, 100, 250);   

    popMatrix();
  }
}
