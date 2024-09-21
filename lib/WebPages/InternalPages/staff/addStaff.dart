//  import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:intl/intl.dart';
// import 'package:project_1/WebPages/InternalPages/menu_bar.dart';
// import 'package:project_1/WebPages/Values/colours.dart';
// import 'package:project_1/WebPages/Widgets/formFields/textWidgets.dart';
//
// class AddstaffPage extends StatefulWidget {
//   const AddstaffPage({super.key});
//
//   @override
//   State<AddstaffPage> createState() => _AddstaffPageState();
// }
//
// class _AddstaffPageState extends State<AddstaffPage> {
//   final GlobalKey<ScaffoldState> _statekey = GlobalKey();
//   final GlobalKey<FormState> _formKey = GlobalKey();
//   var tv_monile_no = TextEditingController();
//   var tv_alt_mobile_no =TextEditingController();
//   var idProof, addressProof, departmentValue, positionValue, bankValue, stateValue, cityValue,genderValue;
//   TextEditingController careerdateController = TextEditingController();
//   TextEditingController joiningDateController = TextEditingController();
//   List idProofList = ["Voter ID", "Driving License", "Adhar Card", "Passport"];
//   List addressProofList = ["Adhar Card", "Electricity Bill"];
//   List departmentList = ["Digital Marketing", "Web Developing","Mobile Developing", "Graphic Designing"];
//   List positionList = ["Senior","Intern", "Manager"];
//   List bankList = ["Axis", "HDFC","SBI"];
//   List stateList = ["Rajasthan","Punjab","Gujrat"];
//   List cityList = ["Jodhpur","Barmer","Jaipur"];
//   TextEditingController dateController = TextEditingController();
//   bool isAddresssame = false;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//        key: _statekey,
//       body: Form(
//         key: _formKey,
//           child: LayoutBuilder(
//               builder: (context, constraints) {
//                 if (MediaQuery
//                     .of(context)
//                     .size
//                     .width > 700) {
//                   return desktopView(context, _statekey);
//                 } else {
//                  // return MobileView();
//                   return Container();
//                 }
//               }
//           )
//        ),
//     );
//   }
//   }
//
//  Widget desktopView(BuildContext context, GlobalKey<ScaffoldState> _statekey){
//   //var joiningDateController;
//   var joiningDateController;
//   var departmentValue;
//   var departmentList;
//   return Row(
//     children: [
//       desktopMenu(context),
//       Expanded(
//           flex: 8,
//           child: Container(
//             decoration: const BoxDecoration(
//               border: Border(
//                 left: BorderSide(width: 1.0, color: ColourPalette.borderColor),
//                 right: BorderSide(width: 1.0, color: ColourPalette.borderColor),
//                 top: BorderSide(width: 1.0, color: ColourPalette.borderColor),
//                 bottom: BorderSide(width: 1.0, color: ColourPalette.borderColor),
//               )
//             ),
//             child: SingleChildScrollView(
//               child: Container(
//                 color: Colors.grey[100],
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     DesktopAppBar(context, _statekey),
//                     Padding(padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           pageHeadingText('Add Staff'),
//                           Icon(FontAwesomeIcons.download)
//                         ],
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Color(0xFFDDF1FF),
//                             offset: Offset(0.0, 1.0),
//                             blurRadius: 1.0
//                           )
//                         ]
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(top: 15.0),
//                             child: Row(
//                               children: [
//                                 Spacer(flex: 2,),
//                                 Expanded(
//                                     child: Text("General Details",
//                                     style: TextStyle(
//                                       fontFamily: "Inter",
//                                       color: Color(0xFF3D475C),
//                                       fontSize: 16),
//                                     )
//                                 ),
//                                 Spacer(flex: 2),
//                               ],
//                             ),
//                           ),
//                           Padding(padding: const EdgeInsets.only(top: 15),
//                             child: Row(
//                               children: [
//                                 const Spacer(
//                                   flex: 2,
//                                 ),
//                                 Expanded(
//                                   flex: 14,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         TextFieldlabelText("First Name"),
//                                         formTextField('[a-zA-Z]+','Enter only Alphabetical characters.',TextInputType.name,"First Name")
//                                       ],
//                                     )
//                                 ),
//                                 const Spacer(
//                                   flex: 1,
//                                 ),
//                                 Expanded(
//                                     flex: 14,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         TextFieldlabelText("Last Name"),
//                                         formTextField('[a-zA-Z]+','Enter only Alphabetical characters.',TextInputType.name,"Last Name")
//                                       ],
//                                     )
//                                 ),
//                                 const Spacer(
//                                   flex: 1,
//                                 ),
//                                 Expanded(
//                                     flex: 14,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         TextFieldlabelText("Email ID"),
//                                         formTextField('null','Enter a valid emial id.',TextInputType.name,"Email ID")
//                                       ],
//                                     )
//                                 ),
//                                 const Spacer(
//                                   flex: 2,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 15),
//                             child: Row(
//                               children: [
//                                 Spacer(
//                                   flex: 2,
//                                 ),
//                                 Expanded(
//                                   flex: 14,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         TextFieldlabelText("Date of Joining"),
//                                         Container(
//                                           height: 38,
//                                           margin: const EdgeInsets.only(top: 10),
//                                           child: TextFormField(
//                                             controller: joiningDateController,
//                                             onTap: () async {
//                                               DateTime? tillDate = await showDatePicker(
//                                                   context: context,
//                                                   initialDate: DateTime.now(),
//                                                   firstDate: DateTime(DateTime.now().day-1),
//                                                   lastDate: DateTime.now());
//                                               if(tillDate != null) {
//                                                 joiningDateController.text = DateFormat('yyyy-MM-dd').format(tillDate);
//                                               }
//                                               setState(() {});
//                                             },
//                                             readOnly: true,
//                                             decoration: InputDecoration(
//                                               border: OutlineInputBorder(
//                                                 borderSide: const BorderSide(color: Color(0xFF9499A1)),
//                                                 borderRadius: BorderRadius.circular(5)
//                                               ),
//                                               isDense: true,
//                                               contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                                               suffixIcon: const Icon(Icons.calendar_month,color: Color(0xFF2D8FCF))
//                                             ),
//                                             validator: (value) {
//                                               if(!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value!)) {
//                                                 return 'Please Enter Date in yyyy-MM-dd Format';
//                                               } else {
//                                                 return null;
//                                               }
//                                             },
//                                             keyboardType: TextInputType.datetime,
//                                           ),
//                                         )
//                                       ],
//                                     )
//                                 ),
//                                 const Spacer(
//                                   flex: 1,
//                                 ),
//                                 Expanded(
//                                   flex: 14,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         TextFieldlabelText("Department"),
//                                         Container(
//                                           margin: const EdgeInsets.only(top: 10),
//                                           child: DropdownButtonFormField(
//                                             isExpanded: true,
//                                               decoration: InputDecoration(
//                                                 isDense: true,
//                                                 contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                                                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
//                                                 hintText: "Select Department"
//                                               ),
//                                             validator: (value) {
//                                               if(value == null) {
//                                                 return "Please enter your department.";
//                                               } else {
//                                                 return null;
//                                               }
//                                             },
//                                               icon: const Icon(
//                                                 Icons.keyboard_arrow_down,
//                                                 color: Color(0xFF2D8FCF),
//                                                 size: 24,
//                                               ), //items: [], onChanged: (Object? value) {  },
//                                                value: departmentValue,
//                                               onChanged: (newValue) {
//                                               setState((){
//                                                 departmentValue = newValue;
//                                               });
//                                               },
//                                               items: departmentList.map((valueItem){
//                                                 return DropdownMenuItem(
//                                                     value: valueItem,
//                                                     child: Text(valueItem)
//                                                 );
//                                               }).toList(),
//                                            ),
//                                         )
//                                       ],
//                                     )
//                                 ),
//                                 const Spacer(
//                                   flex: 1,
//                                 ),
//                                 Expanded(
//                                     flex: 14,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         TextFieldlabelText("Designation"),
//                                         Container(
//                                           margin: const EdgeInsets.only(top: 10),
//                                         )
//                                       ],))
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//       )
//     ],
//   );
//  }
//
// void setState(Null Function() param0) {
// }
//
//

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:project_1/WebPages/InternalPages/menu_bar.dart';
import 'package:project_1/WebPages/Values/colours.dart';
import 'package:project_1/WebPages/Widgets/formFields/textWidgets.dart';

class AddstaffPage extends StatefulWidget {
  const AddstaffPage({super.key});

  @override
  State<AddstaffPage> createState() => _AddstaffPageState();
}

class _AddstaffPageState extends State<AddstaffPage> {
  final GlobalKey<ScaffoldState> _statekey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();

  // Controllers and initial values
  TextEditingController joiningDateController = TextEditingController();
  List departmentList = ["Digital Marketing", "Web Developing", "Mobile Developing", "Graphic Designing"];
  List positionList = ["Senior","Intern", "Manager"];
  List genderList = ["Male", "Female"];
  List stateList = ["Rajasthan","Punjab","Gujrat"];
  List cityList = ["Jodhpur","Barmer","Jaipur"];
  var departmentValue, positionValue, genderValue, stateValue, cityValue;
  bool isValue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _statekey,
      body: Form(
        key: _formKey,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (MediaQuery.of(context).size.width > 700) {
              return desktopView(context);
            } else {
              return Container(); // Mobile view can be added later
            }
          },
        ),
      ),
    );
  }

  Widget desktopView(BuildContext context) {
    return Row(
      children: [
        desktopMenu(context), // Assuming desktopMenu is another widget
        Expanded(
          flex: 8,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                right: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                top: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                bottom: BorderSide(width: 1.0, color: ColourPalette.borderColor),
              ),
            ),
            child: SingleChildScrollView(
              child: Container(
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    DesktopAppBar(context, _statekey),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          pageHeadingText('Add Staff'),
                          Icon(FontAwesomeIcons.download),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFDDF1FF),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 1.0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Row(
                              children: [
                                Spacer(flex: 2),
                                Expanded(
                                  child: Text(
                                    "General Details",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      color: Color(0xFF3D475C),
                                      fontSize: 16,
                                    ),textAlign: TextAlign.start,
                                  ),
                                ),
                                Spacer(flex: 2),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                const Spacer(flex: 2),
                                Expanded(
                                  flex: 14,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFieldlabelText("First Name"),
                                      formTextField('[a-zA-Z]+', "Enter only Alphabetical characters.", TextInputType.name, "First Name"),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Expanded(
                                  flex: 14,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFieldlabelText("Last Name"),
                                      formTextField('[a-zA-Z]+', 'Enter only Alphabetical characters.', TextInputType.name, "Last Name"),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Expanded(
                                  flex: 14,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFieldlabelText("Email ID"),
                                      formTextField('null', 'Enter a valid email id.', TextInputType.emailAddress, "Email ID"),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 2),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                const Spacer(flex: 2),
                                Expanded(
                                  flex: 14,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFieldlabelText("Date of Joining"),
                                      Container(
                                        height: 38,
                                        margin: const EdgeInsets.only(top: 10),
                                        child: TextFormField(
                                          controller: joiningDateController,
                                          onTap: () async {
                                            DateTime? tillDate = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(DateTime.now().day-1),
                                              lastDate: DateTime.now(),
                                            );
                                            if (tillDate != null) {
                                              joiningDateController.text = DateFormat('dd-MM-yyyy').format(tillDate);
                                            }
                                          },
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(color: Color(0xFF9499A1)),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            isDense: true,
                                            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                            suffixIcon: const Icon(Icons.calendar_month, color: Color(0xFF2D8FCF)),
                                          ),
                                          validator: (value) {
                                            if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value!)) {
                                              return 'Please Enter Date in dd-MM-yyyy Format';
                                            }
                                            return null;
                                          },
                                          keyboardType: TextInputType.datetime,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Expanded(
                                  flex: 14,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFieldlabelText("Department"),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: DropdownButtonFormField(
                                          isExpanded: true,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                            hintText: "Select Department",
                                          ),
                                          validator: (value) {
                                            if (value == null) {
                                              return "Please enter your department.";
                                            }
                                            return null;
                                          },
                                          icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF2D8FCF), size: 24),
                                          value: departmentValue,
                                          onChanged: (newValue) {
                                            setState(() {
                                              departmentValue = newValue;
                                            });
                                          },
                                          items: departmentList.map((valueItem) {
                                            return DropdownMenuItem(
                                              value: valueItem,
                                              child: Text(valueItem),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Expanded(
                                  flex: 14,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFieldlabelText("Designation"),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: DropdownButtonFormField(
                                          isExpanded: true,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                            hintText: "Select Designation",
                                          ),
                                          validator: (value) {
                                            if (value == null) {
                                              return "Please enter your designatoin.";
                                            }
                                            return null;
                                          },
                                          icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF2D8FCF), size: 24),
                                          value: positionValue,
                                          onChanged: (newValue) {
                                            setState(() {
                                              positionValue = newValue;
                                            });
                                          },
                                          items: positionList.map((valueItem) {
                                            return DropdownMenuItem(
                                              value: valueItem,
                                              child: Text(valueItem),
                                            );
                                          }).toList(),
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(flex: 2),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                const Spacer(flex: 2),
                                Expanded(
                                  flex: 14,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFieldlabelText("Salary(INR)"),
                                      formTextField('[0-9]+', "Enter only Numbers.", TextInputType.number, "Salary"),
                                    ],
                                  ),
                                ),
                                Spacer(flex: 32),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 30,
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Row(
                                  children: [
                                    Spacer(flex: 2),
                                    Expanded(
                                      child: Text(
                                        "Personal Details",
                                        style: TextStyle(
                                          fontFamily: "Inter",
                                          color: Color(0xFF3D475C),
                                          fontSize: 16,
                                        ),textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Spacer(flex: 2),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    const Spacer(flex: 2),
                                    Expanded(
                                      flex: 14,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextFieldlabelText("Email ID"),
                                          formTextField('[a-zA-Z]+', "Enter only Alphabetical characters.", TextInputType.number, "Email ID"),
                                        ],
                                      ),
                                    ),
                                    const Spacer(flex: 1),
                                    Expanded(
                                      flex: 14,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextFieldlabelText("Mobile"),
                                          formTextField('[a-zA-Z]+', 'Enter only Alphabetical characters.', TextInputType.name, "Monile no"),
                                        ],
                                      ),
                                    ),
                                    const Spacer(flex: 1),
                                    Expanded(
                                      flex: 14,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextFieldlabelText("Alternative Number"),
                                          formTextField('[a-zA-Z]+', 'Enter only Alphabetical characters.', TextInputType.name, "Alternative no"),
                                        ],
                                      ),
                                    ),
                                    const Spacer(flex: 2),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                    children: [
                                    const Spacer(flex: 2),
                                      Expanded(
                                          flex: 14,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextFieldlabelText("Date of Birth"),
                                              Container(
                                                height: 38,
                                                margin: const EdgeInsets.only(top: 10),
                                                child: TextFormField(
                                                  controller: joiningDateController,
                                                  onTap: () async {
                                                    DateTime? tillDate = await showDatePicker(
                                                      context: context,
                                                      initialDate: DateTime.now(),
                                                      firstDate: DateTime(DateTime.now().day-1),
                                                      lastDate: DateTime.now(),
                                                    );
                                                    if (tillDate != null) {
                                                      joiningDateController.text = DateFormat('dd-MM-yyyy').format(tillDate);
                                                    }
                                                  },
                                                  readOnly: true,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Color(0xFF9499A1)),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    isDense: true,
                                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                    suffixIcon: const Icon(Icons.calendar_month, color: Color(0xFF2D8FCF)),
                                                  ),
                                                  validator: (value) {
                                                    if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value!)) {
                                                      return 'Please Enter Date in dd-MM-yyyy Format';
                                                    }
                                                    return null;
                                                  },
                                                  keyboardType: TextInputType.datetime,
                                                ),
                                              ),
                                            ],
                                          )
                                      ),
                                      const Spacer(flex: 1),
                                      Expanded(
                                        flex: 14,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TextFieldlabelText("Gender"),
                                            Container(
                                              margin: const EdgeInsets.only(top: 10),
                                              child: DropdownButtonFormField(
                                                isExpanded: true,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                                  hintText: "Select Gender",
                                                ),
                                                validator: (value) {
                                                  if (value == null) {
                                                    return "Please select Gender.";
                                                  }
                                                  return null;
                                                },
                                                icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF2D8FCF), size: 24),
                                                value: genderValue,
                                                onChanged: (newValue) {
                                                  setState(() {
                                                    genderValue = newValue;
                                                  });
                                                },
                                                items: genderList.map((valueItem) {
                                                  return DropdownMenuItem(
                                                    value: valueItem,
                                                    child: Text(valueItem),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                      Expanded(
                                          flex: 14,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextFieldlabelText("Career Starting Date"),
                                              Container(
                                                height: 38,
                                                margin: const EdgeInsets.only(top: 10),
                                                child: TextFormField(
                                                  controller: joiningDateController,
                                                  onTap: () async {
                                                    DateTime? tillDate = await showDatePicker(
                                                      context: context,
                                                      initialDate: DateTime.now(),
                                                      firstDate: DateTime(DateTime.now().day-1),
                                                      lastDate: DateTime.now(),
                                                    );
                                                    if (tillDate != null) {
                                                      joiningDateController.text = DateFormat('dd-MM-yyyy').format(tillDate);
                                                    }
                                                  },
                                                  readOnly: true,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Color(0xFF9499A1)),
                                                      borderRadius: BorderRadius.circular(5),
                                                    ),
                                                    isDense: true,
                                                    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                    suffixIcon: const Icon(Icons.calendar_month, color: Color(0xFF2D8FCF)),
                                                  ),
                                                  validator: (value) {
                                                    if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value!)) {
                                                      return 'Please Enter Date in dd-MM-yyyy Format';
                                                    }
                                                    return null;
                                                  },
                                                  keyboardType: TextInputType.datetime,
                                                ),
                                              ),
                                            ],
                                          )
                                      ),
                                      Spacer(flex: 2),
                                    ]
                                )
                              ),
                              const Divider(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.0),
                                    child: Row(
                                      children: [
                                        Spacer(flex: 2,),
                                        Expanded(
                                          child: Text("Address",
                                            style: TextStyle(
                                              fontFamily: "Inter",
                                              color: Color(0xFF3D475C),
                                              fontSize: 16
                                            ),textAlign: TextAlign.start,
                                          ),
                                        ), Spacer(flex: 2,)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.0),
                                    child: Row(
                                      children: [
                                        Spacer(flex: 2,),
                                        Expanded(
                                          child: Text("Permanent Address",
                                            style: TextStyle(
                                                fontFamily: "Inter",
                                                color: Color(0xFF3D475C),
                                                fontSize: 16
                                            ),textAlign: TextAlign.start,
                                          ),
                                        ), Spacer(flex: 2,)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        const Spacer(flex: 2),
                                        Expanded(
                                          flex: 14,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextFieldlabelText("State"),
                                              Container(
                                                margin: const EdgeInsets.only(top: 10),
                                                child: DropdownButtonFormField(
                                                  isExpanded: true,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                                    hintText: "Select State",
                                                  ),
                                                  validator: (value) {
                                                    if (value == null) {
                                                      return "Please select a state.";
                                                    }
                                                    return null;
                                                  },
                                                  icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF2D8FCF), size: 24),
                                                  value: stateValue,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      stateValue = newValue;
                                                    });
                                                  },
                                                  items: stateList.map((valueItem) {
                                                    return DropdownMenuItem(
                                                      value: valueItem,
                                                      child: Text(valueItem),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),const Spacer(flex: 2),
                                        Expanded(
                                          flex: 14,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextFieldlabelText("City"),
                                              Container(
                                                margin: const EdgeInsets.only(top: 10),
                                                child: DropdownButtonFormField(
                                                  isExpanded: true,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                                    hintText: "Select State First",
                                                  ),
                                                  validator: (value) {
                                                    if (value == null) {
                                                      return "Please Select Your City.";
                                                    }
                                                    return null;
                                                  },
                                                  icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF2D8FCF), size: 24),
                                                  value: cityValue,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      cityValue = newValue;
                                                    });
                                                  },
                                                  items: cityList.map((valueItem) {
                                                    return DropdownMenuItem(
                                                      value: valueItem,
                                                      child: Text(valueItem),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(flex: 1),
                                        Expanded(
                                          flex: 14,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextFieldlabelText("Pincode"),
                                              formTextField('[a-zA-Z]+', 'Enter only Alphabetical characters.', TextInputType.name, "Pincode"),
                                            ],
                                          ),
                                        ),Spacer(flex: 2),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Spacer(flex: 1),
                                        Expanded(
                                            flex: 22,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                TextFieldlabelText("Address"),
                                                formTextField('[a-zA-Z]+', "Please enter Staff's Address", TextInputType.name, "Address"),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 15),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Checkbox(value: isValue, onChanged: (newValue){
                                                        setState(() {
                                                          isValue=newValue!;
                                                        });
                                                      }),
                                                      Text("Residental Address Same as Permanent Address"),
                                                      //TextButton(onPressed: () {}, child: Text("Forgot your password"),style: TextButton.styleFrom(foregroundColor: Colors.blue, textStyle: TextStyle(decoration: TextDecoration.underline)),
                                                      //)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ),Spacer(flex:1),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    height: 30,
                                  ),
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 15.0),
                                        child: Row(
                                          children: [
                                            Spacer(flex: 2),
                                            Expanded(child: Text("Account Details",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF3D475C),
                                                  fontSize: 16,
                                                ),textAlign: TextAlign.start,
                                            ),
                                            ),Spacer(flex: 2),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: [
                                            const Spacer(flex: 2),
                                            Expanded(
                                              flex: 14,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextFieldlabelText("Account Holder"),
                                                  formTextField('[a-zA-Z]+', "Enter only Alphabetical characters.", TextInputType.name, "First Name"),
                                                ],
                                              ),
                                            ),
                                            const Spacer(flex: 1),
                                            Expanded(
                                              flex: 14,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextFieldlabelText("Account Number"),
                                                  formTextField('[a-zA-Z]+', 'Enter only Alphabetical characters.', TextInputType.name, "Last Name"),
                                                ],
                                              ),
                                            ),
                                            const Spacer(flex: 1),
                                            Expanded(
                                              flex: 14,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextFieldlabelText("Re-enter Account Number"),
                                                  formTextField('null', 'Enter a valid email id.', TextInputType.emailAddress, "Email ID"),
                                                ],
                                              ),
                                            ),
                                            const Spacer(flex: 2),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



