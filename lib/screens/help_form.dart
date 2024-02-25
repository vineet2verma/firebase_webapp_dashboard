import 'package:flutter/material.dart';
import '../Utilities/constants.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HELP FORM"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Personal Detail
            Container(
              height: 150,
              child: Column(
                children: [
                  // Personal Detail
                  Container(
                      child:
                          Text("YOUR PERSONAL DETAILS ", style: stylehelpslip)),
                  SizedBox(
                    height: 10,
                  ),
                  // Name , Mobile , Email ID
                  Container(
                    decoration: BoxDecoration(
                        color: bgcolor,
                        borderRadius: BorderRadius.circular(21)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                                flex: 2, child: buildTextFormField("Name", 1)),
                            Flexible(
                                flex: 2,
                                child: buildTextFormField("Mobile No.", 1)),
                          ],
                        ),
                        buildTextFormField("Email ID", 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Issue Section Text
            Container(
              child: Text("ISSUE SECTION",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 10,
            ),
            // Issue Section Container
            Container(
              height: 280,
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.circular(21),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CustomTxtFunc(
                      maxlines: 2,
                      lblName: "Challenge Faced / Issue",
                      focusColor: Colors.grey),
                  CustomTxtFunc(
                      lblName: "Best Solution 1", focusColor: Colors.grey),
                  CustomTxtFunc(
                      lblName: "Best Solution 2", focusColor: Colors.grey),
                  CustomTxtFunc(
                      lblName: "Best Solution 3", focusColor: Colors.grey),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButtonFunc(
                  onTap: () {
                    print("Cancel");
                  },
                  btnname: "Cancel/Reset",
                  btnMinSize: 200,
                ),
                CustomButtonFunc(
                  onTap: () {
                    print("Submit");
                  },
                  btnname: "Submit",
                  btnMinSize: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField(String lblName, int maxLine) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextFormField(
        maxLines: maxLine,
        onTap: () {},
        decoration: InputDecoration(
          filled: true,
          labelText: lblName,
          focusColor: Colors.grey,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
        ),
      ),
    );
  }
}
