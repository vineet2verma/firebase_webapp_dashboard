import 'package:firebasetodoapp2/Utilities/constants.dart';
import 'package:firebasetodoapp2/screens/gate_form_screen.dart';
import 'package:firebasetodoapp2/screens/help_form.dart';
import 'package:flutter/material.dart';

class MobileHelpSlip extends StatelessWidget {
  MobileHelpSlip({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Help Slip Report"),
        centerTitle: true,
        backgroundColor: mydefaultcolor,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HelpPage();
                  },
                ));
              },
              child: Text("Help")),
        ],
      ),
      drawer: MyDrawer(),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                    aspectRatio: 8 / 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.green,
                      ),
                    )),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          color: Colors.blue,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
