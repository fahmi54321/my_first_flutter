import 'package:flutter/material.dart';
import 'package:my_first_flutter/app_bar/screen/first_screen.dart';
import 'package:my_first_flutter/app_bar/screen/second_screen.dart';

class MyAppBar2 extends StatelessWidget {
  const MyAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My first flutter"),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('Snackbar')));
                }),
            TextButton(onPressed: () {}, child: Text("Text button"))
          ],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.send),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [FirstScreen(), SecondScreen()],
        ),
      ),
    );
  }
}