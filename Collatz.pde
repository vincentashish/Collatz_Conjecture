int n = 77031;
//boolean b = true;
//int steps = 0;
int len = 50;
void setup() {
  size(1280, 720);
  background(0);
  translate(0,height/2);
  for (int i = 1; i< 1000; i++);
  {
    n = i;
    do {
      //println(n);
      n = collatz(n);
      
    } while (n!= 1);
  }
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
    return (n * 3) + 1;
  }
}
