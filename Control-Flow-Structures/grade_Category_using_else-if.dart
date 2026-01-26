void main() {
  int score  = 80;

  if ( score > 90 && score > 100 ){
    print("Grade: A");
  } else if ( score > 80 && score > 89 ) {
     print("Grade: B");
  } else if ( score > 70 && score > 79 ) {
    print("Grade: C");
  } else if ( score < 70 ) {
    print("Grade: D");
  }
}