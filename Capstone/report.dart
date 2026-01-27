import 'package:intl/intl.dart';
import 'package:characters/characters.dart';

class Task {
  final String name;
  final bool completed;

  Task(this.name, this.completed);
}

String getGreeting(String name) {
  int hour = DateTime.now().hour;
  String timeGreeting;

  if (hour >= 5 && hour < 12) {
    timeGreeting = "Good morning";
  } else if (hour >= 12 && hour < 18) {
    timeGreeting = "Good afternoon";
  } else {
    timeGreeting = "Good evening";
  }

  return "$timeGreeting, $name!";
}

String getFormattedDate() {
  DateTime now = DateTime.now();
  return DateFormat('EEEE, MMMM d, y', 'en_US').format(now);
}

int countGraphemeClusters(String text) {
  return text.characters.length;
}

List<Task> parseTasks(List<String> taskStrings) {
  List<Task> tasks = [];

  for (String taskString in taskStrings) {
    List<String> parts = taskString.split(':');

    if (parts.length == 2) {
      String name = parts[0];
      bool completed = parts[1].toLowerCase() == 'true';
      tasks.add(Task(name, completed));
    }
  }

  return tasks;
}

void printTasks(List<Task> tasks) {
  for (Task task in tasks) {
    String indicator = task.completed ? '✅' : '❌';
    print('$indicator ${task.name}');
  }
}

void printSummary(List<Task> tasks) {
  int completed = tasks.where((task) => task.completed).length;
  int total = tasks.length;

  print('\\nYou completed $completed out of $total tasks.');
}

void main(List<String> arguments) {
  if (arguments.length < 2) {
    print('Usage: dart run report.dart <name> <title> [tasks...]');
    print('Example: dart run report.dart Alice "📝 Daily Report" "Task1:true" "Task2:false"');
    return;
  }

  String userName = arguments[0];
  String reportTitle = arguments[1];
  List<String> taskStrings = arguments.length > 2 ? arguments.sublist(2) : [];

  print(getGreeting(userName));

  print(getFormattedDate());
  print(''); 

  print(reportTitle);

  int charCount = countGraphemeClusters(reportTitle);
  print('Title has $charCount characters.');
  print(''); 

  List<Task> tasks = parseTasks(taskStrings);
  if (tasks.isNotEmpty) {
    printTasks(tasks);

    printSummary(tasks);
  } else {
    print('No tasks to display.');
  }
}
