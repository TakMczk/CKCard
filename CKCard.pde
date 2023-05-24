int t;
int startTime;
boolean colorChanged;

void setup() {
  size(1000, 1000);
  background(255);
  t = (int) random(1, 11);
  startTime = millis() + (t * 1000);
}

void draw() {
  if (!colorChanged && millis() >= startTime) {
    background(255, 0, 0);
    colorChanged = true;
  }
}

void mouseClicked() {
  if (colorChanged) {
    int s = millis() - startTime;
    println(s + " milliseconds");
  }
}
