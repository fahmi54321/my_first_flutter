import 'package:flutter/material.dart';

class BasicUi extends StatelessWidget {
  const BasicUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first flutter"),
        backgroundColor: Colors.red,
        elevation: 30.0,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Snackbar')));
              }),
          TextButton(onPressed: () {}, child: Text("Text button")),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                child: Text("My account"),
                value: 0,
              ),
              PopupMenuItem<int>(
                child: Text("Settings"),
                value: 1,
              ),
              PopupMenuItem<int>(
                child: Text("Logout"),
                value: 2,
              )
            ];
          }, onSelected: (value) {
            if (value == 0) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('My accounnt')));
            } else if (value == 1) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Settings')));
            } else if (value == 2) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Logout')));
            }
          })
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/gambar/ktp.jpeg'),height: 200,),
              Text("Title"),
              Text("Sub title")
            ],
          ),
        ),
      ),
    );
  }
}

