import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Utilities/constants.dart';
import '../../Utilities/func_class.dart';

class DesktopForgot extends StatefulWidget {
  @override
  State<DesktopForgot> createState() => _DesktopForgotState();
}

class _DesktopForgotState extends State<DesktopForgot> {
  // const splashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgcolor,
        title: Text("FORGOT SCREEN"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: size.height * .30,
                width: size.width,
                color: bgcolor,
                child: Lottie.asset(
                    "assets/lottiefile/Animation_business_girl.json"),
              ),
            ),

            // Email
            Center(
              child: Container(
                height: 200,
                child: AspectRatio(
                  aspectRatio: 2 / 1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      // Email
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Flexible(
                            child: TextField(
                          controller: controllerForgotEmail,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: textfieldbgcolor,
                            labelText: "Email",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      // Buttons - Clear & Submit
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                return funcClass().forgotFunc(
                                    controllerForgotEmail.text.toString());
                              },
                              child: Text(
                                "Back",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                return funcClass().forgotFunc(
                                    controllerForgotEmail.text.toString());
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                      // Forgot & Sign UP
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
