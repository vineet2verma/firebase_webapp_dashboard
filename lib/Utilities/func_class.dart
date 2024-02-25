import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetodoapp2/Utilities/constants.dart';
import 'package:firebasetodoapp2/screens/desktop/desktop_home.dart';
import 'package:firebasetodoapp2/screens/mobile/mobile_home.dart';
import 'package:firebasetodoapp2/screens/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseAuth fireauth = FirebaseAuth.instance;

class funcClass {
  // User? currentUser = fireauth.currentUser;
  CollectionReference users = firestore.collection('usersdb');
  CollectionReference gateentrydb = firestore.collection('gateentrydb');

  signUpFunc(String username, String phone, String email, String password) {
    return createuser(email, password).then((value) => {
          users
              .add({
                'userName': username,
                'phone': phone,
                'email': email,
                'createdAt': DateTime.now(),
                // 'UserID': currentUser!.uid.toString()
              })
              .then((value) => {SignUpClearFunc()})
              .then((value) => ScaffoldMessenger(
                      child: SnackBar(
                    content: Text(" User Created Sucessfully "),
                  )))
              .then((value) => print("completed"))
        });
  }

  loginSubmitFunc(String email, String password, context) {
    // print("${email} And ${password}");
    return fireauth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => print("Login Sucessfully"))
        .then((value) =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ResponsiveLayout(
                  desktop: DesktopHomeScreen(), mobile: MobileHomeScreen());
            })))
        .then((value) => ScaffoldMessenger(
            child: SnackBar(content: Text(" Login Sucessfully "))));
  }

  loginClearFunc() {
    controllerEmail.clear();
    controllerPassword.clear();
  }

  SignUpClearFunc() {
    loginClearFunc();
    controllerUserName.clear();
    controllerPhoneNumber.clear();
    controllerSignUpEmail.clear();
    controllerSignUpPassword.clear();
  }

  loginpasswordShowFunc() {
    return obscuretext = !obscuretext;
  }

  forgotFunc(email) {
    // return print("forget ${email}");
    return fireauth
        .sendPasswordResetEmail(email: email)
        .then((value) => controllerForgotEmail.clear())
        .then((value) => ScaffoldMessenger(
                child: SnackBar(
              content: Text("Reset Link Send On ${email}"),
            )));
  }

  createuser(String email, String password) {
    return FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

//   Material Gate Func !!
  materialGateFormAddEntry(
      String selectedtype1,
      String selectedMode2,
      String sender,
      String partyName,
      String ChallanDate,
      String selectedChallan,
      String challanNo,
      String selectedMaterial,
      String noOfPcs,
      String noofPcsType) {
    return gateentrydb.add({
      type: selectedtype1.toString(),
      materialMode: selectedMode2.toString(),
      sender: sender,
      party_Name: partyName,
      challan_Date: ChallanDate,
      selected_Challan: selectedChallan,
      challan_No: challanNo,
      selected_Material: selectedMaterial,
      no_Of_Pcs: noOfPcs,
      no_Of_Pcs_Type: noofPcsType
    });
  }
}
