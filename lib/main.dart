import 'package:flutter/material.dart';
import 'package:fa22_bracket/MainDrawer.dart';

void main() {
  runApp(
      MaterialApp(
      home: Bracket()
  ));
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

class resources extends StatefulWidget {
  @override
  _resourcesPageState createState() => _resourcesPageState();
}
class _resourcesPageState extends State<resources> {
  Widget build(BuildContext context) {
    return  Scaffold(
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
                Center(
                ),
              ],
            ),
            Center(
              child: Text(
                '[COURSE NAME] Resources',
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
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      height: 175,
                      padding: EdgeInsets.all(70),
                      color: Colors.white,
                      child: TextButton.icon(
                        onPressed: (){
                          print('resource1 pressed');
                        },
                        icon: const Icon(Icons.file_present_outlined),
                        label: const Text(
                          'Resource 1',
                          style: TextStyle(
                            letterSpacing: 6,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 175,
                      padding: EdgeInsets.all(70),
                      color: Colors.white,
                      child: TextButton.icon(
                        onPressed: (){
                          print('resource2 pressed');
                        },
                        icon: const Icon(Icons.file_present_outlined),
                        label: const Text(
                          'Resource 2',
                          style: TextStyle(
                            letterSpacing: 6,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 175,
                      padding: EdgeInsets.all(70),
                      color: Colors.white,
                      child: TextButton.icon(
                        onPressed: (){
                          print('resource3 pressed');
                        },
                        icon: const Icon(Icons.file_present_outlined),
                        label: const Text(
                          'Resource 3',
                          style: TextStyle(
                            letterSpacing: 6,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      height: 175,
                      padding: EdgeInsets.all(70),
                      color: Colors.white,
                      child: TextButton.icon(
                        onPressed: (){
                          print('resource4 pressed');
                        },
                        icon: const Icon(Icons.file_present_outlined),
                        label: const Text(
                          'Resource 4',
                          style: TextStyle(
                            letterSpacing: 6,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 175,
                      padding: EdgeInsets.all(70),
                      color: Colors.white,
                      child: TextButton.icon(
                        onPressed: (){
                          print('resource5 pressed');
                        },
                        icon: const Icon(Icons.file_present_outlined),
                        label: const Text(
                          'Resource 5',
                          style: TextStyle(
                            letterSpacing: 6,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 175,
                      padding: EdgeInsets.all(70),
                      color: Colors.white,
                      child: TextButton.icon(
                        onPressed: (){
                          print('add new pressed');
                        },
                        icon: const Icon(Icons.add_box_outlined),
                        label: const Text(
                          'Add New',
                          style: TextStyle(
                            letterSpacing: 6,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),

          ],
        ),
      ),

    );
  }
}





