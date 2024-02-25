import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Utilities/constants.dart';
import '../../Utilities/func_class.dart';

class signupScreen extends StatefulWidget {
  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
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
            Center(
              child: Container(
                height: size.height * .40,
                width: size.width,
                color: bgcolor,
                child: Lottie.asset(
                    "assets/lottiefile/Animation_business_girl.json"),
              ),
            ),

            // UserName
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

            // Phone
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

            // Email
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

            // Buttons
            SizedBox(
              height: 10,
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
