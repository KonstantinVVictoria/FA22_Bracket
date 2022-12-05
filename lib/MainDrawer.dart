import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size:50,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Username",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Title",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      ListTile(
        onTap: () {
          print('home page pressed');
        },
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text("Home Page"),
        textColor: Colors.white,
      ),

      ListTile(
        onTap: () {
          print('other page pressed');
        },
        leading: Icon(
          Icons.contact_page_outlined,
          color: Colors.white,
        ),
        title: Text("Other Page"),
        textColor: Colors.white,
      ),
      Align(
        alignment:Alignment.bottomLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              onTap: () {
                print ('log out pressed');
              },
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text("Sign Out"),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    ]);
  }
}
