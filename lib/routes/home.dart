import 'package:demo_app/routes/Settings.dart';
import 'package:demo_app/widget/button_widget.dart';
import 'package:flutter/material.dart';

import '../Util.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String appTitle = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
                onClicked: () {
                  appTitle = "Profile";
                  log(appTitle);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Profile"),
                      action: SnackBarAction(
                        label: 'Action',
                        onPressed: () {
                          // Code to execute.
                        },
                      ),
                    ),
                  );
                },
                text: "Profile"),
            SizedBox(height: 8),
            ButtonWidget(
                onClicked: () {
                  appTitle = "Settings";
                  log(appTitle);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Profile"),
                      action: SnackBarAction(
                        label: 'Action',
                        onPressed: () {
                          // Code to execute.
                        },
                      ),
                    ),
                  );
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                text: "Settings"),
          ],
        ),
      ),
    );
  }
}
