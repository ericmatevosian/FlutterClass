import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

Map<String, String> Jobs = {

  'Emineh': "Teacher",
  'Eric': "Electrical Engineer",
  'Narbeh': "Mechanical Engineer",
  'Karin': "Photographer",
};

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('jobs');

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  var _box = Hive.box('jobs');

  void Write() {
    _box.putAll(Jobs);
    print("Writed");
  }

  void Read() {
    print(_box.get("Eric"));
    print(_box.get("Emineh"));
    print(_box.get("Karin"));
    print(_box.get("Narbeh"));
  }

  void Delete() {
    _box.delete("Eric");
    _box.delete("Emineh");
    _box.delete("Karin");
    _box.delete("Narbeh");
    print("Deleted");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: Write,
              child: Text(
                "Write",
                style: TextStyle(
                  backgroundColor: Colors.indigo.shade200,
                  fontSize: 50,
                ),
              ),
            ),
            MaterialButton(
              onPressed: Read,
              child: Text(
                "Read",
                style: TextStyle(
                  backgroundColor: Colors.green.shade300,
                  fontSize: 50,
                ),
              ),
            ),
            MaterialButton(
              onPressed: Delete,
              child: Text(
                "Delete",
                style: TextStyle(
                  backgroundColor: Colors.red.shade300,
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
