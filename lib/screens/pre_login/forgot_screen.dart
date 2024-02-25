import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Utilities/constants.dart';
import '../../Utilities/func_class.dart';

class forgotScreen extends StatefulWidget {
  @override
  State<forgotScreen> createState() => _forgotScreenState();
}

class _forgotScreenState extends State<forgotScreen> {
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
                height: size.height * .40,
                width: size.width,
                color: bgcolor,
                child: Lottie.asset(
                    "assets/lottiefile/Animation_business_girl.json"),
              ),
            ),

            // Email
            SizedBox(
              height: 10,
            ),
            Flexible(
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

            // Buttons
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        return Navigator.pop(context);
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        return funcClass()
                            .forgotFunc(controllerForgotEmail.text.toString());
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),

            // Forgot & Sign UP
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
