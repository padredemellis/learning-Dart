void main() {
  User user = User();
  print(user.getName()); // Before setting

  user.setName('Alice');
  
  print(user.getName());
}

class User {
  Map<String, dynamic> _data = {};

  void setName(String name) {
    _data["name"] = name;
  }

  String getName() {
    if (_data.containsKey("name")) {
      return '${_data["name"]}';
    } else {
      return "Name not set";
    }
  }
}
