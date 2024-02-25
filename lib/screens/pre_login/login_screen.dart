// import 'package:firebasetodoapp2/screens/pre_login/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// import '../../Utilities/constants.dart';
// import '../../Utilities/func_class.dart';
// import 'forgot_screen.dart';
//
// class loginScreen extends StatefulWidget {
//   @override
//   State<loginScreen> createState() => _loginScreenState();
// }
//
// class _loginScreenState extends State<loginScreen> {
//   // const splashScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: bgcolor,
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: bgcolor,
//         title: Text("LOGIN SCREEN"),
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Container(
//                 height: size.height * .40,
//                 width: size.width,
//                 color: bgcolor,
//                 child: Lottie.asset("assets/lottiefile/animation_loading.json"),
//               ),
//             ),
//
//             // Email
//             SizedBox(
//               height: 10,
//             ),
//             Flexible(
//                 child: TextField(
//               controller: controllerEmail,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: textfieldbgcolor,
//                 labelText: "Email",
//                 labelStyle: TextStyle(fontWeight: FontWeight.bold),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(21),
//                 ),
//               ),
//             )),
//
//             // Password
//             SizedBox(
//               height: 10,
//             ),
//             Flexible(
//                 child: TextField(
//               controller: controllerPassword,
//               obscureText: obscuretext,
//               decoration: InputDecoration(
//                 suffix: InkWell(
//                   child: Icon(
//                     Icons.remove_red_eye,
//                     color: Colors.black,
//                   ),
//                   onTap: () {
//                     setState(() {});
//                     funcClass().loginpasswordShowFunc();
//                   },
//                 ),
//                 filled: true,
//                 fillColor: textfieldbgcolor,
//                 labelText: "Password",
//                 labelStyle: TextStyle(fontWeight: FontWeight.bold),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(21),
//                 ),
//               ),
//             )),
//
//             // Buttons
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 SizedBox(
//                   height: 50,
//                   width: 200,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         return funcClass().loginClearFunc();
//                       },
//                       child: Text(
//                         "Clear",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 200,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         return funcClass().loginSubmitFunc(
//                             controllerEmail.text.toString(),
//                             controllerPassword.text.toString());
//                       },
//                       child: Text(
//                         "Submit",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                 ),
//               ],
//             ),
//
//             // Forgot & Sign UP
//             SizedBox(
//               height: 30,
//             ),
//             Center(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("If you Forgot Password"),
//                 TextButton(
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) {
//                           return forgotScreen();
//                         },
//                       ));
//                     },
//                     child: Text(
//                       "CLICK",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.yellow),
//                     )),
//                 Text("Here"),
//               ],
//             )),
//             Center(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("If you don't have an Account"),
//                 TextButton(
//                     onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) {
//                           return signupScreen();
//                         },
//                       ));
//                     },
//                     child: Text("SIGN UP",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.yellow))),
//                 Text("Here"),
//               ],
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
