void main() {
  print(filtrada);
}

List<int> scores = [85, 42, 90, 67, 58];

List<int> filtrada = scores.where((score)=> score >= 60).toList();
