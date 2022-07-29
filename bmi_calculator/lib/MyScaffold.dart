import 'package:flutter/material.dart';
import 'main.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  final Color? scaffold_color;


  MyScaffold({required this.body , this.scaffold_color});

  Color _TextColorBright = Colors.grey.shade200;
  Color _MainColor = Colors.indigo;
  Color _TextColorDark = Colors.grey.shade900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffold_color,
      appBar: AppBar(
        backgroundColor: _MainColor,
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ShowInformation(context);
            },
            icon: Icon(
              Icons.info_outline_rounded,
              size: 30,
            ),
          )
        ],
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: _MainColor,
                ),
                child: Center(
                  child: Text(
                    "Rizelectron",
                    style: TextStyle(
                      fontSize: 30,
                      color: _TextColorBright,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_filled,
                color: _TextColorDark,
                size: 30,
              ),
              title: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                    color: _TextColorDark,
                  ),
                ),
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
              ),
            ), //Home
            ListTile(
              leading: Icon(
                Icons.phone,
                color: _TextColorDark,
                size: 30,
              ),
              title: TextButton(
                onPressed: () {
                  //Todo: navigate to Contact page
                },
                child: Text(
                  "ContactUs",
                  style: TextStyle(
                    fontSize: 20,
                    color: _TextColorDark,
                  ),
                ),
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
              ),
            ), //Contact us
            ListTile(
              leading: Icon(
                Icons.web_sharp,
                color: _TextColorDark,
                size: 30,
              ),
              title: TextButton(
                onPressed: () {
                  //Todo: navigate to web page
                },
                child: Text(
                  "Web Page",
                  style: TextStyle(
                    fontSize: 20,
                    color: _TextColorDark,
                  ),
                ),
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
              ),
            ), //WebPage
          ],
        ),
      ),
      body: body,
    );
  }
}
