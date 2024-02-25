import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetodoapp2/Utilities/constants.dart';
import 'package:firebasetodoapp2/screens/gate_form_screen.dart';
import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  // DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    // FirebaseAuth fireauth = FirebaseAuth.instance;
    // var userEmailId = fireauth.currentUser!.email.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: mydefaultcolor,
        actions: [],
      ),
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: MyDrawer(),
              )),
          Expanded(
            flex: 3,
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
