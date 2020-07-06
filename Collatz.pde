
import processing.pdf.*;
import processing.svg.*;
//boolean b = true;
//int steps = 0;
void setup() {
  size(4327, 4301);
  //beginRecord(SVG,"collatz1.svg");
  background(255);
  //colorMode(HSB,360,100,100);
  for (int i = 1; i < 10000; i++) {
    IntList sequence = new IntList();
    int n = i;
    do {
      //println(n);
      sequence.append(n);
      n = collatz(n);
    } while (n!= 1);
    sequence.append(1);
    sequence.reverse();
    float len = height/100.0;
    float angle = PI;
    resetMatrix();
    translate(width/6.5, height/1.05);    
    int c1 = int(random(0,255));
    int c2 = int(random(0,255));
    int c3 = int(random(0,255));
    for (int j = 0; j < sequence.size(); j++) {
      int value = sequence.get(j);
      if (value % 2 == 0) {
        rotate(angle*0.081);
      } else {
        rotate(-angle*0.05);
      }
      strokeWeight(25);
      //stroke(0);
      stroke(c1, c2,c3);
      //fill(255);
      line(0, 0, -len,0);
      translate(-len,0);
    }
  }
 //endRecord();
 saveFrame("Collatz_Colour.jpg");
  println("Finished");
}

void draw() {

  //n = collatz(n);
  ////steps++;
  //if(b){
  //  if(n == 1){
  //    b = false;
  //    //println(steps);
  //  }
  //  println(n);
  //}
}

int collatz(int n) {
  if (n%2 == 0) {
    return n/2;
  } else {
    return ((n * 3) + 1)/2;
  }
}
