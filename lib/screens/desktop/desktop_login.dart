import 'package:firebasetodoapp2/screens/desktop/desktop_forgot.dart';
import 'package:firebasetodoapp2/screens/mobile/mobile_forgot.dart';
import 'package:firebasetodoapp2/screens/pre_login/signup_screen.dart';
import 'package:firebasetodoapp2/screens/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../Utilities/constants.dart';
import '../../Utilities/func_class.dart';
import '../mobile/mobile_signup.dart';
import 'desktop_signup.dart';

class DesktopLogin extends StatefulWidget {
  const DesktopLogin({super.key});

  @override
  State<DesktopLogin> createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgcolor,
        title: Text("LOGIN SCREEN"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Lottie Animation
            Center(
              child: Container(
                height: size.height * .30,
                width: size.width,
                color: bgcolor,
                child: Lottie.asset("assets/lottiefile/animation_loading.json"),
              ),
            ),

            // Container
            // Email // Password
            // Button - Clear - Submit
            Center(
              child: Container(
                height: 250,
                // width: 500,
                // color: Colors.blue,
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
                          controller: controllerEmail,
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
                      // Password
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Flexible(
                            child: TextField(
                          controller: controllerPassword,
                          obscureText: obscuretext,
                          decoration: InputDecoration(
                            suffix: InkWell(
                              child: obscuretext == true
                                  ? Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.black,
                                    ),
                              onTap: () {
                                setState(() {});
                                funcClass().loginpasswordShowFunc();
                              },
                            ),
                            filled: true,
                            fillColor: textfieldbgcolor,
                            labelText: "Password",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // Buttons - Clear & Submit
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                return funcClass().loginClearFunc();
                              },
                              child: Text(
                                "Clear",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                return funcClass().loginSubmitFunc(
                                    controllerEmail.text.toString(),
                                    controllerPassword.text.toString(),
                                    context);
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

            // Forgot Line
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("If you Forgot Password"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ResponsiveLayout(
                              desktop: DesktopForgot(), mobile: MobileForgot());
                        },
                      ));
                    },
                    child: Text(
                      "CLICK",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.yellow),
                    )),
                Text("Here"),
              ],
            )),
            // Sign Up Line
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("If you don't have an Account"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ResponsiveLayout(
                              desktop: DesktopSignUp(), mobile: MobileSignUp());
                        },
                      ));
                    },
                    child: Text("SIGN UP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow))),
                Text("Here"),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
