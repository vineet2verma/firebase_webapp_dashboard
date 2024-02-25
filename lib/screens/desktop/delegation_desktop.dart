import 'package:firebasetodoapp2/Utilities/constants.dart';
import 'package:firebasetodoapp2/screens/gate_form_screen.dart';
import 'package:flutter/material.dart';

class DesktopDelegation extends StatelessWidget {
  DesktopDelegation({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Delegation Report"),
        centerTitle: true,
        backgroundColor: mydefaultcolor,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyGateFormPage();
                  },
                ));
              },
              child: Text("Delegation Form")),
          SizedBox(
            width: 10,
          ),
        ],
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
