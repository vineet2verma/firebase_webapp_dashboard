import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetodoapp2/Utilities/func_class.dart';
import 'package:firebasetodoapp2/screens/desktop/checklist_desktop.dart';
import 'package:firebasetodoapp2/screens/desktop/delegation_desktop.dart';
import 'package:firebasetodoapp2/screens/desktop/desktop_home.dart';
import 'package:firebasetodoapp2/screens/desktop/desktop_login.dart';
import 'package:firebasetodoapp2/screens/desktop/help_slip_desktop.dart';
import 'package:firebasetodoapp2/screens/mobile/checklist_mobile.dart';
import 'package:firebasetodoapp2/screens/mobile/delegation_mobile.dart';
import 'package:firebasetodoapp2/screens/mobile/gate_report_mob.dart';
import 'package:firebasetodoapp2/screens/mobile/help_slip_mobile.dart';
import 'package:firebasetodoapp2/screens/mobile/mobile_home.dart';
import 'package:firebasetodoapp2/screens/mobile/mobile_login.dart';
import 'package:firebasetodoapp2/screens/pre_login/login_screen.dart';
import 'package:firebasetodoapp2/screens/responsive_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/desktop/gate_report_desktop.dart';

// Colors
Color bgcolor = Colors.teal;
Color textfieldbgcolor = Colors.white;
Color mydefaultcolor = Colors.grey.shade300;
Color helpformbgcolor = Colors.blue;

// Text Style

TextStyle stylehelpslip = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

TextStyle style1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 21);

// Pre Login
// LogIn
TextEditingController controllerEmail = TextEditingController();
TextEditingController controllerPassword = TextEditingController();
// SignUp
TextEditingController controllerUserName = TextEditingController();
TextEditingController controllerPhoneNumber = TextEditingController();
TextEditingController controllerSignUpEmail = TextEditingController();
TextEditingController controllerSignUpPassword = TextEditingController();
// Forgot
TextEditingController controllerForgotEmail = TextEditingController();

bool obscuretext = true;

// Gate Form
double imageHeight = 150;
double imageWidth = 3.1;
List<String> dropDowntype = ['Cash', 'Purchase', 'Returnable', 'Job Work'];
String? selectedtype1;
List<String> dropDownMode = ['Courier', 'Runner', 'By Party'];
String? selectedMode2;
TextEditingController ControllerSenderName = TextEditingController();
TextEditingController ControllerPartyName = TextEditingController();
// TextEditingController ControllerDatePicker = TextEditingController();
List<String> dropDownChallanType = ['Challan', 'Bill', 'Parchi'];
String? selectedChallan;
TextEditingController ControllerInvoiceNumber = TextEditingController();
List<String> dropDownMaterialType = [
  'Fabric',
  'Documents',
  'Beading Material',
  'Other'
];
String? selectedMaterial;
TextEditingController ControllerQuantityPcs = TextEditingController();
String? selectedMaterialType;
List<String> dropDownMType = ['Gm', 'Kg', 'Pcs', 'Paper', 'Other'];

// User List
List<String> dropDownDoerList = [
  'Doer A',
  'Doer B',
  'Doer C',
  'Doer D',
  'Doer E'
];

class MyDrawer extends StatefulWidget {
  // const MyDrawer({super.key});
  late FirebaseAuth fireauth;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var currUserEmailId = '';
  @override
  void initState() {
    FirebaseAuth fireauth = FirebaseAuth.instance;
    // TODO: implement initState
    // super.initState();
    initUserData();
  }

  initUserData() async {
    currUserEmailId = (await FirebaseAuth.instance.currentUser!.email)!;

    setState(() {
      currUserEmailId;
      print("=>  ${currUserEmailId}");
    });
  }

  Widget build(BuildContext context) {
    // var currUserEmailId = fireauth.currentUser!.email.toString();
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logout
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Logout"),
                      InkWell(
                        child: Icon(Icons.logout),
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return ResponsiveLayout(
                                  desktop: DesktopLogin(),
                                  mobile: MobileLogin());
                            },
                          ));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // User Mail Id
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${currUserEmailId}",
                    style: style1,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),

          // Pages

          // Home
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.double_arrow_rounded),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return ResponsiveLayout(
                        desktop: DesktopHomeScreen(),
                        mobile: MobileHomeScreen());
                  },
                ));
              },
            ),
          ),
          // Gate Entry Details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text("Gate Entry Details"),
              trailing: Icon(Icons.double_arrow_rounded),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return ResponsiveLayout(
                        mobile: MobileGateReport(),
                        desktop: DesktopGateReport());
                  },
                ));
              },
            ),
          ),
          // Help Slip
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.help),
              title: Text("Help Slip"),
              trailing: Icon(Icons.double_arrow_rounded),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return ResponsiveLayout(
                        desktop: DesktopHelpSlip(), mobile: MobileHelpSlip());
                  },
                ));
              },
            ),
          ),
          // Checklist
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.checklist),
              title: Text("Checklist"),
              trailing: Icon(Icons.double_arrow_rounded),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return ResponsiveLayout(
                        desktop: DesktopCheckList(), mobile: MobileChecklist());
                  },
                ));
              },
            ),
          ),
          // Delegation
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.transcribe_outlined),
              title: Text("Delegation"),
              trailing: Icon(Icons.double_arrow_rounded),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return ResponsiveLayout(
                        desktop: DesktopDelegation(),
                        mobile: MobileDelegation());
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTxtFunc extends StatelessWidget {
  String lblName;
  int maxlines;
  Color focusColor;

  CustomTxtFunc(
      {required this.lblName, required this.focusColor, this.maxlines = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextField(
        maxLines: maxlines,
        decoration: InputDecoration(
          filled: true,
          labelText: lblName,
          focusColor: focusColor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
        ),
      ),
    );
  }
}

class CustomButtonFunc extends StatelessWidget {
  VoidCallback onTap;
  String btnname;
  double btnMinSize;

  CustomButtonFunc({
    required this.onTap,
    required this.btnname,
    required this.btnMinSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(btnMinSize, 50),
        ),
        onPressed: onTap,
        child: Text(
          btnname,
          style: TextStyle(fontSize: 21),
        ));
  }
}
