import 'package:flutter/material.dart';
import 'package:my_first_flutter/font_style/font_style.dart';

class ImportFonts extends StatelessWidget {
  const ImportFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          color: Colors.blue,
          margin: EdgeInsets.only(left: 30.0,top: 0),
          padding: EdgeInsets.only(left: 30.0,top: 30.0,right: 30.0),
          child: Column(
            children: [
              Image(image: AssetImage('assets/gambar/ktp.jpeg'),height: 200,),
              Text("Title",style: mainHeader,),
              Text("Sub title")
            ],
          ),
        ),
      ),
    );
  }
}

