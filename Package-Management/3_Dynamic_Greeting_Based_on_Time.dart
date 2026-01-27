
void main() {
  print(greetingMessage("Ana"));
}

String greetingMessage(String name) {
  final now = DateTime.now();
  if (now.hour >= 5 && now.hour <= 11) {
    return "Good morning, $name!";
  } else if (now.hour >= 12 &&
      now.hour <= 17) {
    return "Good afternoon, $name!";
  } else {
    return "Good evening, $name!";
  }
    
}

//Apuntes
/*
Lo que aprendi: obtenemos la hora del sistema para poder hacer un saludo personalixado dependiendo de la hora del dia
*/