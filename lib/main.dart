import 'package:flutter/material.dart';
import 'package:fa22_bracket/MainDrawer.dart';

void main() {
  runApp(MaterialApp(home: Bracket()));
}

class Bracket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: resources(),
    );
  }
}

class Resources {
  String name = "";
  String link = "";
  Resources(String name, String link) {
    this.name = name;
    this.link = link;
  }
  Widget get_link(resources) {
    return Container(
      width: 300,
      height: 175,
      padding: EdgeInsets.all(70),
      color: Colors.white,
      child: TextButton.icon(
        onPressed: () {
          resources.new_state(this);
        },
        icon: const Icon(Icons.file_present_outlined),
        label: Text(this.link),
      ),
    );
  }
}

class Course {
  String class_name = "";
  var resources = [];
  Course(String class_name) {
    this.class_name = class_name;
  }
  add_resource(String resource_name, String link) {
    this.resources.add(new Resources(resource_name, link));
  }

  Widget get_container(_resourcesPageState resources) {
    Widget container = Container(
      width: 300,
      height: 175,
      padding: EdgeInsets.all(70),
      color: Colors.white,
      child: TextButton.icon(
        onPressed: () {
          resources.new_state(this);
        },
        icon: const Icon(Icons.file_present_outlined),
        label: Text(
          this.class_name,
          style: TextStyle(
            letterSpacing: 6,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ),
    );
    return container;
  }
}

class resources extends StatefulWidget {
  @override
  _resourcesPageState createState() => _resourcesPageState();
}

class _resourcesPageState extends State<resources> {
  var _current_course = null;

  Widget build(BuildContext context) {
    print(_current_course);
    var classes1 = [
      "Math 292",
      "Phys 231",
      "Phys 230",
    ];
    var classes2 = ["Math 291", "Math 298", "Bio 101"];
    List<Widget> containers1 = classes1
        .map(
            (String class_name) => (new Course(class_name)).get_container(this))
        .toList();
    List<Widget> containers2 = classes2
        .map(
            (String class_name) => (new Course(class_name)).get_container(this))
        .toList();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Team 6 FA22 Project Bracket'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      endDrawer: Drawer(
        child: MainDrawer(),
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(),
              ],
            ),
            Center(
              child: Text(
                _current_course != null
                    ? _current_course.class_name
                    : 'Resources',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 35.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _current_course != null
                        ? [_current_course.resources[0].get_link(this)]
                        : containers1),
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _current_course != null ? [] : containers2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  new_state(Course course) {
    setState(() {
      course.add_resource("Paul's Notes",
          "https://tutorial.math.lamar.edu/Classes/CalcIII/CalcIII.aspx");
      _current_course = course;
    });
  }
}
