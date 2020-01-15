//SOFT VISUALS BY GEORGINA YEBOAH
//COURSE: Body Centric Technologies

//CODE REFERENCES:
//Inspired reference code for first(carnation) and fourth(MatrixSun) visuals: 
//JazNewt Code: https://forum.processing.org/beta/num_1264911247.html

//Firmata standard code by Arduino https://playground.arduino.cc/Interfacing/Processing/


import processing.serial.*;
import cc.arduino.*;

Arduino arduino; 


Carnation carn;
Lilly lilly;
Lollipop loli;
MatrixSun sun;


Serial myPort;

int carnSensor = 0;
int lillySensor = 0;
int loliSensor = 0;
int sunSensor = 0;

int inputSensor;

int ledVal;

int average;
int average1;
int average2;
int average3;

void setup() {

  println(Arduino.list());
  arduino = new Arduino(this, "/dev/tty.usbmodem1411", 57600);


  carn = new Carnation();
  lilly = new Lilly();
  loli = new Lollipop();
  sun = new MatrixSun();

  // Set the Arduino digital pins as inputs.
  for (int i = 0; i <= 13; i++) {
    arduino.pinMode(i, Arduino.INPUT);
  }

  size(1000, 800); 
  background(0);
  frameRate(30);
  // myPort = new Serial(this, "/dev/cu.usbmodem1411", 9600);
}

void draw() {
     //  background(0);
     noStroke();
     fill(0, 0, 0, 10);
     rect(0, 0, width, height);
  /*
  if (myPort.available() > 0) {
   
   carnSensor = myPort.read(); //carnSensor
   sunSensor = myPort.read(); //sunSensor
   lillySensor = myPort.read(); //lillySensor
   loliSensor = myPort.read(); //loliSensor
   
   */
  /*
    average = myPort.read(); //carnSensor
   
   average1 = myPort.read(); //sunSensor
   average2 = myPort.read(); //lillySensor
   average3 = myPort.read(); //loliSensor
   println("carnSensor = ", average);
   //  println("sunSensor = ", average1);
   */
  // println("sunSensor = ", sunSensor);
  //    ledVal = myPort.read();


  //   carnSensor = average;
  //   lillySensor = average1;
  //   loliSensor = average2;
  //   sunSensor = average3;


  //  inputSensor = myPort.read();

  for (int i = 0; i <= 5; i++) {

    if ((arduino.analogRead(i) >= 70 ) && (arduino.analogRead(i) <= 90)) {
      carn.display();
      carn.rot();
    }
    /*
   else {
     //  background(0);
     noStroke();
     fill(0, 0, 0, 10);
     rect(0, 0, width, height);
     // println("Im black now");
     
     }
 */

    if ((arduino.analogRead(i) >= 106) && (arduino.analogRead(i) <= 118)) {
      sun.display();
      sun.rot();
    }
    
    if ((arduino.analogRead(i) >= 120) && (arduino.analogRead(i) <= 126)) {
      lilly.display();
      lilly.rot();
  //    lilly.lillyFade();
    }
    
    if ((arduino.analogRead(i) >= 87) && (arduino.analogRead(i) <= 90)) {  
 
      loli.display();
      loli.rot();
    }
   
    println(arduino.analogRead(i));


    /*else {
     //  background(0);
     noStroke();
     fill(0, 0, 0, 10);
     rect(0, 0, width, height);
     // println("Im black now");
     
     }
     */
     delay(10);
  }
}
//  println(loliSensor);

//println(sensorVal);

// println(lillySensor);

//println(loliSensor);
//ForFuture Code Integration  
//if(f > num ) {


//}

//if(f > num ) {


//}
//if(f > num ) {


//}
//if(f > num ) {


//}
