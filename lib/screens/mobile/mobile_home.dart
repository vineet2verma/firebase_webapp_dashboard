import 'package:firebasetodoapp2/Utilities/constants.dart';
import 'package:firebasetodoapp2/screens/gate_form_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MobileHomeScreen extends StatelessWidget {
  MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Mobile Screen"),
        centerTitle: true,
        backgroundColor: mydefaultcolor,
        actions: [],
      ),
      drawer: MyDrawer(),
    );
  }
}
