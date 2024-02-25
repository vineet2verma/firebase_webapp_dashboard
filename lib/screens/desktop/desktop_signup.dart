import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../Utilities/constants.dart';
import '../../Utilities/func_class.dart';

class DesktopSignUp extends StatefulWidget {
  @override
  State<DesktopSignUp> createState() => _DesktopSignUpState();
}

class _DesktopSignUpState extends State<DesktopSignUp> {
  // const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgcolor,
        title: Text("SIGNUP SCREEN"),
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
                child: Lottie.asset(
                    "assets/lottiefile/Animation_business_girl.json"),
              ),
            ),

            // Container
            // Email // Password
            // Button - Clear - Submit
            Center(
              child: Container(
                height: 250,
                child: AspectRatio(
                  aspectRatio: 2 / 1,
                  child: Column(
                    children: [
                      // User Name
                      SizedBox(
                        height: 10,
                      ),
                      Flexible(
                          child: TextField(
                        controller: controllerUserName,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textfieldbgcolor,
                          labelText: "User Name",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      )),

                      // Phone No
                      SizedBox(
                        height: 10,
                      ),
                      Flexible(
                          child: TextField(
                        controller: controllerPhoneNumber,
                        decoration: InputDecoration(
                          suffix: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          filled: true,
                          fillColor: textfieldbgcolor,
                          labelText: "Phone Number",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                      )),

                      //Email
                      SizedBox(
                        height: 10,
                      ),
                      Flexible(
                          child: TextField(
                        controller: controllerSignUpEmail,
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

                      // Password
                      SizedBox(
                        height: 10,
                      ),
                      Flexible(
                          child: TextField(
                        controller: controllerSignUpPassword,
                        obscureText: obscuretext,
                        decoration: InputDecoration(
                          suffix: InkWell(
                            child: Icon(
                              Icons.remove_red_eye,
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

                      // Buttons - Clear & Submit
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  return Navigator.pop(context);
                                  // return funcClass().loginClearFunc();
                                },
                                child: Text(
                                  "Back",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  return funcClass().signUpFunc(
                                      controllerUserName.text.toString(),
                                      controllerPhoneNumber.text.toString(),
                                      controllerSignUpEmail.text.toString(),
                                      controllerSignUpPassword.text.toString());
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
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
