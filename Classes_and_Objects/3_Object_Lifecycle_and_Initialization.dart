void main() {
  Timer t = Timer(10);
  t.start();
}

class Timer {
  int seconds;

  Timer(this.seconds);

  void start() {
    print("Timer started for ${this.seconds} seconds.");
  }
}
