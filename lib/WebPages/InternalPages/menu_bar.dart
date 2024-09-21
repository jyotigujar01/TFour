import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/WebPages/InternalPages/Attendence/addStudent.dart';
import 'package:project_1/WebPages/InternalPages/Attendence/viewStudent.dart';
import 'package:project_1/WebPages/InternalPages/Client/addClient.dart';
import 'package:project_1/WebPages/InternalPages/Client/viewClient.dart';
import 'package:project_1/WebPages/InternalPages/Dashboard/dashBoard.dart';
import 'package:project_1/WebPages/InternalPages/Inquiry/Interview/addInquiry.dart';
import 'package:project_1/WebPages/InternalPages/Inquiry/Interview/viewInquiry.dart';
import 'package:project_1/WebPages/InternalPages/Inquiry/Service/addservice_Inquiry.dart';
import 'package:project_1/WebPages/InternalPages/Inquiry/Service/viewservice_Inquiry.dart';
import 'package:project_1/WebPages/InternalPages/Inquiry/Student/addstudent_Inquiry.dart';
import 'package:project_1/WebPages/InternalPages/Inquiry/Student/viewstudent_Inquiry.dart';
import 'package:project_1/WebPages/InternalPages/Masters/Course/addCourse.dart';
import 'package:project_1/WebPages/InternalPages/Masters/Course/viewCourse.dart';
import 'package:project_1/WebPages/InternalPages/Masters/Department/addDepartment.dart';
import 'package:project_1/WebPages/InternalPages/Masters/Department/viewDepartment.dart';
import 'package:project_1/WebPages/InternalPages/Masters/Service/addService.dart';
import 'package:project_1/WebPages/InternalPages/Portfolio/App/add.dart';
import 'package:project_1/WebPages/InternalPages/Portfolio/App/view.dart';
import 'package:project_1/WebPages/InternalPages/Portfolio/Website/addWebsite.dart';
import 'package:project_1/WebPages/InternalPages/Portfolio/Website/viewWebsite.dart';
import 'package:project_1/WebPages/InternalPages/Purchase/Expenses/addExpenses.dart';
import 'package:project_1/WebPages/InternalPages/Purchase/Expenses/viewExpenses.dart';
import 'package:project_1/WebPages/InternalPages/Purchase/Salary/addSalary.dart';
import 'package:project_1/WebPages/InternalPages/Purchase/Salary/viewSalary.dart';
import 'package:project_1/WebPages/InternalPages/Purchase/TFourAdvertisment/addAd.dart';
import 'package:project_1/WebPages/InternalPages/Purchase/TFourAdvertisment/viewAd.dart';
import 'package:project_1/WebPages/InternalPages/Reminder/addReminder.dart';
import 'package:project_1/WebPages/InternalPages/Reminder/viewReminder.dart';
import 'package:project_1/WebPages/InternalPages/Sale/Service/addServiceSale.dart';
import 'package:project_1/WebPages/InternalPages/Sale/Service/viewServiceSale.dart';
import 'package:project_1/WebPages/InternalPages/Sale/Training/addFeeReceipt.dart';
import 'package:project_1/WebPages/InternalPages/Sale/Training/viewFeeReceipt.dart';
import 'package:project_1/WebPages/InternalPages/Service/assignService.dart';
import 'package:project_1/WebPages/InternalPages/Service/assignedService.dart';
import 'package:project_1/WebPages/InternalPages/Student/addStudent.dart';
import 'package:project_1/WebPages/InternalPages/Student/viewStudent.dart';
import 'package:project_1/WebPages/InternalPages/staff/addStaff.dart';
import 'package:project_1/WebPages/InternalPages/staff/viewStaff.dart';
import 'package:project_1/WebPages/Values/colours.dart';
import 'package:project_1/WebPages/Values/dimens.dart';
import 'package:project_1/WebPages/Widgets/extendedItem.dart';
import 'package:project_1/WebPages/Widgets/formFields/textWidgets.dart';
import 'package:project_1/WebPages/Widgets/formStyle.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../Values/fonts.dart';

class Mainview extends StatefulWidget {
  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if(MediaQuery.of(context).size.width > 1000) {
        return Scaffold(
          body: Row(
            children: [
              desktopMenu(context),
              Expanded(
                  flex: 8,
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                        right: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                        top: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                        bottom: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                      )
                    ),
                    child: const Dashboard(),
                  ))
            ],
          ),
        );
      } else {
        return Scaffold(
          drawer: mobileMenu(context),
          body: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                right: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                top: BorderSide(width: 1.0, color: ColourPalette.borderColor),
                bottom: BorderSide(width: 1.0, color: ColourPalette.borderColor),
              )
            ),
            child: Dashboard(),
          ),
        );
      }
    });
  }
}

 @override
 Widget mobileMenu(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        padding: const EdgeInsets.only(top: 30.0),
        color: ColourPalette.mobilebackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png",height: 100,)),
              const Padding(
                padding: EdgeInsets.only(left: 18.0,top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.dashboard,color: Color(0xFF023b6d), size: 15),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Dasboard",style: TextStyle(fontFamily: "MontserratRegular"),),
                    ),
                  ],
                ),
              ),
              const Extendeditem(
                parentItem: 'Staff',
                Screen_name: ["Add Staff", "View Staff"],
                screens: [AddstaffPage(), ViewstaffPage()], numberofitems: 2,
                parentIcon: Icon(Icons.person),
                Screen_Icon: [Icon(Icons.person_add_alt_1_outlined),Icon(Icons.person_search_outlined)],
              ),
              const Extendeditem(
                parentItem: 'Student',
                Screen_name: ["Add Student", "View Student"],
                screens: [Addstudent(), Viewstudent()], numberofitems: 2,
                parentIcon: Icon(Icons.school),
                Screen_Icon: [Icon(Icons.group_add_outlined),Icon(Icons.groups)],
              ),
              const Extendeditem(
                parentItem: 'Attendence',
                Screen_name: ["Add Student", "View Student"],
                screens: [AddStudent(), ViewStudent()], numberofitems: 2,
                parentIcon: Icon(Icons.event_note),
                Screen_Icon: [Icon(Icons.person_add_alt),Icon(Icons.person_search_outlined)],
              ),
              const Extendeditem(
                parentItem: 'Client',
                Screen_name: ["Add Client", "View Client"],
                screens: [Addclient(), Viewclient()], numberofitems: 2,
                parentIcon: Icon(Icons.people),
                Screen_Icon: [Icon(Icons.dehaze),Icon(Icons.groups)],
              ),
              const Extendeditem(
                parentItem: 'Assigned Service',
                Screen_name: ["Assign Service", "Assigned Service"],
                screens: [Assignservice(), Assignedservice()], numberofitems: 2,
                parentIcon: Icon(Icons.design_services_outlined),
                Screen_Icon: [Icon(Icons.assignment_outlined),Icon(Icons.assignment_turned_in_outlined)],
              ),
              const Extendeditem(
                parentItem: 'Reminder',
                Screen_name: ["Add Reminder", "View Reminder"],
                screens: [Addreminder(), Viewreminder()], numberofitems: 2,
                parentIcon: Icon(Icons.alarm),
                Screen_Icon: [Icon(Icons.person_add_alt),Icon(Icons.person_search_outlined)],
              ),
              const Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: TextFieldlabelText('Sale'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Training',
                  Screen_name: ['Add Fee Receipt', 'View Fee Receipt'],
                  screens: [Addfeereceipt(), Viewfeereceipt()], numberofitems: 2,
                  parentIcon: Icon(Icons.receipt),
                  Screen_Icon: [Icon(Icons.receipt_long),Icon(Icons.receipt_outlined)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Service',
                  Screen_name: ['Add Service Sale', 'View Service Sale'],
                  screens: [Addservicesale(), Viewservicesale()], numberofitems: 2,
                  parentIcon: Icon(Icons.miscellaneous_services_outlined),
                  Screen_Icon: [Icon(Icons.assignment),Icon(Icons.assignment_turned_in_outlined)],
                ),
              ),
              const Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: TextFieldlabelText('Purchase'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Expenses',
                  Screen_name: ['Add Expenses', 'View Expenses'],
                  screens: [Addexpenses(), Viewexpenses()], numberofitems: 2,
                  parentIcon: Icon(FontAwesomeIcons.wallet),
                  Screen_Icon: [Icon(Icons.money),Icon(Icons.account_balance_wallet_outlined)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Salary',
                  Screen_name: ['Add Salary', 'View Salary'],
                  screens: [Addsalary(), Viewsalary()], numberofitems: 2,
                  parentIcon: Icon(FontAwesomeIcons.moneyBill),
                  Screen_Icon: [Icon(FontAwesomeIcons.moneyBillTransfer),Icon(FontAwesomeIcons.moneyCheck)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'TFour Advertisment',
                  Screen_name: ['Add TFour Ad', 'View TFour Ad'],
                  screens: [AddAd(), ViewAd()], numberofitems: 2,
                  parentIcon: Icon(FontAwesomeIcons.rectangleAd),
                  Screen_Icon: [Icon(Icons.assignment),Icon(Icons.assignment_turned_in_outlined)],
                ),
              ),
              const Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: TextFieldlabelText('Masters'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Course',
                  Screen_name: ['Add Course', 'View Course'],
                  screens: [Addcourse(), Viewcourse()], numberofitems: 2,
                  parentIcon: Icon(Icons.menu_book_outlined),
                  Screen_Icon: [Icon(Icons.menu),Icon(Icons.groups_2_outlined)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Service',
                  Screen_name: ['Add Service', 'View Service'],
                  screens: [Addservice(), Viewcourse()], numberofitems: 2,
                  parentIcon: Icon(Icons.home_repair_service_outlined),
                  Screen_Icon: [Icon(Icons.add_chart_sharp),Icon(Icons.miscellaneous_services_outlined)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Department',
                  Screen_name: ['Add Department', 'View Department'],
                  screens: [Adddepartment(), Viewdepartment()], numberofitems: 2,
                  parentIcon: Icon(Icons.home_repair_service_outlined),
                  Screen_Icon: [Icon(Icons.add_chart_sharp),Icon(Icons.miscellaneous_services_outlined)],
                ),
              ),
              const Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: TextFieldlabelText('Inquiry'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Service',
                  Screen_name: ['Add Inquiry', 'View Inquiry'],
                  screens: [AddserviceInquiry(), ViewserviceInquiry()], numberofitems: 2,
                  parentIcon: Icon(Icons.headset_mic_outlined),
                  Screen_Icon: [Icon(Icons.add_chart_sharp),Icon(Icons.miscellaneous_services_outlined)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Student',
                  Screen_name: ['Add Inquiry', 'View Inquiry'],
                  screens: [AddstudentInquiry(), ViewstudentInquiry()], numberofitems: 2,
                  parentIcon: Icon(Icons.school),
                  Screen_Icon: [Icon(Icons.add_chart_sharp),Icon(Icons.miscellaneous_services_outlined)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Interview',
                  Screen_name: ['Add Inquiry', 'View Inquiry'],
                  screens: [Addinquiry(), Viewinquiry()], numberofitems: 2,
                  parentIcon: Icon(Icons.person_add_alt),
                  Screen_Icon: [Icon(Icons.add_chart_sharp),Icon(Icons.miscellaneous_services_outlined)],
                ),
              ),
              const Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: TextFieldlabelText('Portfolio'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'Website',
                  Screen_name: ['Add', 'View'],
                  screens: [Addwebsite(), Viewwebsite()], numberofitems: 2,
                  parentIcon: Icon(Icons.web),
                  Screen_Icon: [Icon(Icons.add_chart_sharp),Icon(Icons.miscellaneous_services_outlined)],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Extendeditem(
                  parentItem: 'App',
                  Screen_name: ['Add', 'View'],
                  screens: [Add(), ViewApp()], numberofitems: 2,
                  parentIcon: Icon(Icons.app_settings_alt),
                  Screen_Icon: [Icon(Icons.add_chart_sharp),Icon(Icons.miscellaneous_services_outlined)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget desktopMenu(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          padding: const EdgeInsets.only(top: 30.0),
          color: ColourPalette.mobilebackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(
                  'assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png',
                  height: 100,)),
                const Padding(padding: EdgeInsets.only(left: 18.0, top: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard, color: ColourPalette.iconColor,
                        size: Dimens.iconSize,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),
                        child: Text("Dashboard",
                          style: TextStyle(fontFamily: "MontserratRegular"),),
                      )
                    ],
                  ),
                ),
                const Extendeditem(
                  parentItem: 'Staff',
                  Screen_name: ["Add Staff", "View Staff"],
                  screens: [AddstaffPage(), ViewstaffPage()],
                  numberofitems: 2,
                  parentIcon: Icon(Icons.person),
                  Screen_Icon: [
                    Icon(Icons.person_add_alt_1_outlined),
                    Icon(Icons.person_search_outlined)
                  ],
                ),
                const Extendeditem(
                  parentItem: 'Student',
                  Screen_name: ["Add Student", "View Student"],
                  screens: [AddstaffPage(), ViewstaffPage()],
                  numberofitems: 2,
                  parentIcon: Icon(Icons.school),
                  Screen_Icon: [
                    Icon(Icons.group_add_outlined),
                    Icon(Icons.groups)
                  ],
                ),
                const Extendeditem(
                  parentItem: 'Attendence',
                  Screen_name: ["Add Student", "View Student"],
                  screens: [AddstaffPage(), ViewstaffPage()],
                  numberofitems: 2,
                  parentIcon: Icon(Icons.event_note),
                  Screen_Icon: [
                    Icon(Icons.person_add_alt),
                    Icon(Icons.person_search_outlined)
                  ],
                ),
                const Extendeditem(
                  parentItem: 'Client',
                  Screen_name: ["Add Client", "View Client"],
                  screens: [AddstaffPage(), ViewstaffPage()],
                  numberofitems: 2,
                  parentIcon: Icon(Icons.people),
                  Screen_Icon: [Icon(Icons.dehaze), Icon(Icons.groups)],
                ),
                const Extendeditem(
                  parentItem: 'Assigned Service',
                  Screen_name: ["Assign Service", "Assigned Service"],
                  screens: [AddstaffPage(), ViewstaffPage()],
                  numberofitems: 2,
                  parentIcon: Icon(Icons.design_services_outlined),
                  Screen_Icon: [
                    Icon(Icons.assignment_outlined),
                    Icon(Icons.assignment_turned_in_outlined)
                  ],
                ),
                const Extendeditem(
                  parentItem: 'Reminder',
                  Screen_name: ["Add Reminder", "View Reminder"],
                  screens: [AddstaffPage(), ViewstaffPage()],
                  numberofitems: 2,
                  parentIcon: Icon(Icons.alarm),
                  Screen_Icon: [
                    Icon(Icons.person_add_alt),
                    Icon(Icons.person_search_outlined)
                  ],
                ),
                const Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextFieldlabelText('Sale'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Training',
                    Screen_name: ['Add Fee Receipt', 'View Fee Receipt'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.receipt),
                    Screen_Icon: [
                      Icon(Icons.receipt_long),
                      Icon(Icons.receipt_outlined)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Service',
                    Screen_name: ['Add Service Sale', 'View Service Sale'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.miscellaneous_services_outlined),
                    Screen_Icon: [
                      Icon(Icons.assignment),
                      Icon(Icons.assignment_turned_in_outlined)
                    ],
                  ),
                ),
                const Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextFieldlabelText('Purchase'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Expenses',
                    Screen_name: ['Add Expenses', 'View Expenses'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(FontAwesomeIcons.wallet),
                    Screen_Icon: [
                      Icon(Icons.money),
                      Icon(Icons.account_balance_wallet_outlined)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Salary',
                    Screen_name: ['Add Salary', 'View Salary'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(FontAwesomeIcons.moneyBill),
                    Screen_Icon: [
                      Icon(FontAwesomeIcons.moneyBillTransfer),
                      Icon(FontAwesomeIcons.moneyCheck)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'TFour Advertisment',
                    Screen_name: ['Add TFour Ad', 'View TFour Ad'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(FontAwesomeIcons.rectangleAd),
                    Screen_Icon: [
                      Icon(Icons.assignment),
                      Icon(Icons.assignment_turned_in_outlined)
                    ],
                  ),
                ),
                const Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextFieldlabelText('Masters'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Course',
                    Screen_name: ['Add Course', 'View Course'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.menu_book_outlined),
                    Screen_Icon: [Icon(Icons.menu), Icon(Icons.groups_2_outlined)],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Service',
                    Screen_name: ['Add Service', 'View Service'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.home_repair_service_outlined),
                    Screen_Icon: [
                      Icon(Icons.add_chart_sharp),
                      Icon(Icons.miscellaneous_services_outlined)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Department',
                    Screen_name: ['Add Department', 'View Department'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.home_repair_service_outlined),
                    Screen_Icon: [
                      Icon(Icons.add_chart_sharp),
                      Icon(Icons.miscellaneous_services_outlined)
                    ],
                  ),
                ),
                const Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextFieldlabelText('Inquiry'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Service',
                    Screen_name: ['Add Inquiry', 'View Inquiry'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.headset_mic_outlined),
                    Screen_Icon: [
                      Icon(Icons.add_chart_sharp),
                      Icon(Icons.miscellaneous_services_outlined)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Student',
                    Screen_name: ['Add Inquiry', 'View Inquiry'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.school),
                    Screen_Icon: [
                      Icon(Icons.add_chart_sharp),
                      Icon(Icons.miscellaneous_services_outlined)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Interview',
                    Screen_name: ['Add Inquiry', 'View Inquiry'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.person_add_alt),
                    Screen_Icon: [
                      Icon(Icons.add_chart_sharp),
                      Icon(Icons.miscellaneous_services_outlined)
                    ],
                  ),
                ),
                const Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextFieldlabelText('Portfolio'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'Website',
                    Screen_name: ['Add', 'View'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.web),
                    Screen_Icon: [
                      Icon(Icons.add_chart_sharp),
                      Icon(Icons.miscellaneous_services_outlined)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Extendeditem(
                    parentItem: 'App',
                    Screen_name: ['Add', 'View'],
                    screens: [AddstaffPage(), ViewstaffPage()],
                    numberofitems: 2,
                    parentIcon: Icon(Icons.app_settings_alt),
                    Screen_Icon: [
                      Icon(Icons.add_chart_sharp),
                      Icon(Icons.miscellaneous_services_outlined)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

AppBar DesktopAppBar(BuildContext context,GlobalKey<ScaffoldState> _key){
  CustomPopupMenuController _controller = CustomPopupMenuController();

  List<ItemModel> menuItems = [
    ItemModel('Profile', Icons.person,const AddstaffPage()),
    ItemModel('Logout', Icons.logout,const AddstaffPage()),
  ];
  return AppBar(
    leading: MediaQuery.sizeOf(context).width < 1000 ? InkWell(
      onTap: (){
        _key.currentState!.openDrawer();
      },
      child: const Icon(Icons.menu),
    ):Container(),
    actions: [
      const Padding(
        padding: EdgeInsets.only(right: 18.0),
        child: Icon(Icons.notification_add_outlined),
      ),
      CustomPopupMenu(
        menuBuilder: () => ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            color: Colors.white,
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: menuItems
                    .map((item) => GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>item.onPress));
                    _controller.hideMenu();
                  },
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          item.icon,
                          size: 15,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              item.title,
                              style: normalText(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ).toList(),
              ),
            ),
          ),
        ),
        pressType: PressType.singleClick,
        verticalMargin: -10,
        controller: _controller,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: CircleAvatar(
                radius: 15,
                child: Image.asset("assets/images/img_3.png"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Admin", style: TextStyle(
                      fontFamily: AppFonts.textFieldLabelFont,
                      color: ColourPalette.textFieldLabelColor,
                      fontSize: Dimens.buttonTextSize
                 ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Row(
                    children: [
                      Text(
                        "Muskan Awtani",
                        style: TextStyle(
                            fontFamily: AppFonts.textFieldLabelFont,
                            color: ColourPalette.textFieldLabelColor,
                            fontSize: Dimens.buttonTextSize),
                      ), Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ],
    backgroundColor: Colors.white,
    shape: Border(bottom: BorderSide(color: Colors.grey[400]!)),
  );
}

class ItemModel {
  final String title;
  final IconData icon;
  final Widget onPress;

  ItemModel(this.title, this.icon,this.onPress);
}
//
// TextStyle normalText(){
//   return const TextStyle(
//     color: ColourPalette.textFieldLabelColor,
//   );
// }




