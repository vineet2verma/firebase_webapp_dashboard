import 'package:firebasetodoapp2/Utilities/constants.dart';
import 'package:firebasetodoapp2/screens/gate_form_screen.dart';
import 'package:flutter/material.dart';

class MobileGateReport extends StatelessWidget {
  MobileGateReport({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Gate Report"),
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
              child: Text("Gate")),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Row(
        children: [
          // Expanded(
          //     flex: 1,
          //     child: Padding(
          //       padding: const EdgeInsets.all(4.0),
          //       child: MyDrawer(),
          //     )),
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
