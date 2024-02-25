import 'dart:async';
import 'package:firebasetodoapp2/Utilities/constants.dart';
import 'package:firebasetodoapp2/Utilities/func_class.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyGateFormPage extends StatefulWidget {
  const MyGateFormPage({super.key});

  @override
  State<MyGateFormPage> createState() => _MyGateFormPageState();
}

class _MyGateFormPageState extends State<MyGateFormPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  DateTime dateVal = DateTime.now();
  bool datebool = false;

  Future<void> dateFunc(BuildContext context) async {
    final DateTime? datePick = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime.now().add(Duration(days: 90)));

    setState(() {
      dateVal = datePick!;
      datebool = true;
      print(dateVal);
      // print(datebool);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Gate Entry Form"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Images
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          // Image Icon 1
                          Expanded(
                            child: Container(
                                height: imageHeight,
                                width: size.width / imageWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  shape: BoxShape.rectangle,
                                  // color: Colors.yellow,

                                  // color: Colors.yellow,
                                ),
                                child: IconButton(
                                  icon:
                                      Icon(Icons.camera_alt_outlined, size: 21),
                                  onPressed: () {},
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          // Image Icon 2
                          Expanded(
                            child: Container(
                                height: imageHeight,
                                width: size.width / imageWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21),
                                  // color: Colors.blue,
                                ),
                                child: IconButton(
                                  icon:
                                      Icon(Icons.camera_alt_outlined, size: 21),
                                  onPressed: () {},
                                )),
                          ),
                          // Container(
                          //   height: imageHeight,
                          //   width: size.width / imageWidth,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(21),
                          //     color: Colors.greenAccent,
                          //   ),
                          //   child: Center(child: Icon(Icons.add,size: 31,weight: 50,)),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  // Type
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("Type",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        // Form Text Input
                        // Select Label
                        Flexible(
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: "Select Label",
                              ),
                              value: selectedtype1,
                              items: dropDowntype
                                  .map((e) => DropdownMenuItem(
                                      child: Text(e), value: e))
                                  .toList(),
                              onChanged: (val) {
                                selectedtype1 = val as String;
                                setState(() {});
                              }),
                        ),
                      ],
                    ),
                  ),
                  // Material Mode
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Material Mode
                        SizedBox(
                            width: 200,
                            child: Text("Material Mode :",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: "Select Material Mode",
                              ),
                              value: selectedMode2,
                              items: dropDownMode
                                  .map((e) => DropdownMenuItem(
                                      child: Text(e), value: e))
                                  .toList(),
                              onChanged: (val) {
                                selectedMode2 = val as String;
                                setState(() {});
                              }),
                        ),
                      ],
                    ),
                  ),
                  // Sender
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Form Sender Name
                        SizedBox(
                            width: 200,
                            child: Text("Sender",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: TextField(
                            controller: ControllerSenderName,
                            onChanged: (value) {
                              setState(() {
                                // print(ControllerSenderName.text.toString());
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Party Name
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("Party Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: TextField(
                            controller: ControllerPartyName,
                            onChanged: (value) {
                              setState(() {
                                // print(ControllerPartyName.text.toString());
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Bill Challan Date    // Date Value Not Pick
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("Bill / Challan Date",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Text(
                                "${datebool == false ? "Select Date" : DateFormat.yMd().format(dateVal)}",
                                style: TextStyle(fontSize: 21),
                              ),
                              onPressed: () {
                                setState(() {
                                  dateFunc(context);
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // CHALLAN / BILL TYPE
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("Challan / Bill Type",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: "Select Challan Type",
                              ),
                              value: selectedChallan,
                              items: dropDownChallanType
                                  .map((e) => DropdownMenuItem(
                                      child: Text(e), value: e))
                                  .toList(),
                              onChanged: (val) {
                                selectedChallan = val as String;
                                setState(() {});
                              }),
                        ),
                      ],
                    ),
                  ),
                  // CHALLAN / BILL NO
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("Bill Challan No.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: TextField(
                            controller: ControllerInvoiceNumber,
                            onChanged: (value) {
                              setState(() {
                                print(ControllerInvoiceNumber.text.toString());
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // MATERIAL TYPE
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("Material Type",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: "Select Material Type",
                              ),
                              value: selectedMaterial,
                              items: dropDownMaterialType
                                  .map((e) => DropdownMenuItem(
                                      child: Text(e), value: e))
                                  .toList(),
                              onChanged: (val) {
                                selectedMaterial = val as String;
                                setState(() {});
                              }),
                        ),
                      ],
                    ),
                  ),
                  // NO OF PCS / QTY
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text("No Of Pcs / Qty",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21))),
                        Flexible(
                          child: TextField(
                            controller: ControllerQuantityPcs,
                            onChanged: (value) {
                              setState(() {
                                print(ControllerQuantityPcs.text.toString());
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: "Type",
                              ),
                              value: selectedMaterialType,
                              items: dropDownMType
                                  .map((e) => DropdownMenuItem(
                                      child: Text(e), value: e))
                                  .toList(),
                              onChanged: (val) {
                                selectedMaterialType = val as String;
                                setState(() {});
                              }),
                        ),
                      ],
                    ),
                  ),

                  // WEIGHT

                  // RECD NAME

                  // RECD CONFIRMATION
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    textStyle: style1,
                    minimumSize: Size(double.infinity, 50)),
                onPressed: () {
                  funcClass().materialGateFormAddEntry(
                      selectedtype1!.toString(),
                      selectedMode2!.toString(),
                      ControllerSenderName.text.toString(),
                      ControllerPartyName.text.toString(),
                      dateVal.toString(),
                      selectedChallan.toString(),
                      ControllerInvoiceNumber.text.toString(),
                      selectedMaterial.toString(),
                      ControllerQuantityPcs.text.toString(),
                      selectedMaterialType.toString());
                  // setState(() {
                  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //     showCloseIcon: true,
                  //     content: Center(child: Text("Record Added")),
                  //   ));
                  //   Navigator.pop(context);
                  // });
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
