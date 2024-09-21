import 'package:flutter/material.dart';

class Menubar extends StatefulWidget {
  @override
  _MenubarState createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  String _selectedPage = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2.0,
        //title: Text('View Staff', style: TextStyle(color: Colors.black)), // Title in the center
        actions: [
          IconButton(
            icon: Icon(Icons.notification_add_outlined, color: Colors.black, size: 20,),
            onPressed: () {
              // Handle notifications
            },
          ),SizedBox(width: 15),
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/img_3.png", // Replace with actual profile image URL
            ),
          ),
          SizedBox(width: 18),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Admin'),
              Text(
                'Muskan Awtani', // Replace with user name
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(width: 20),
        ], // Set AppBar icons to black
      ),
      body: Row(
        children: <Widget>[
          // Sidebar
          Container(
            width: 250,
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'))
                  ),
                  child: Text(
                    '',
                  ),
                ),
                ExpansionTile(
                  leading: Icon(Icons.dashboard_sharp),
                    title: Text('Deshboard')
                ),
                ExpansionTile(
                  leading: Icon(Icons.person),
                  title: Text('Staff'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Staff Option 1'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Staff Option 1';
                        });
                      },
                    ),
                    ListTile(
                      title: Text('Staff Option 2'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Staff Option 2';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.school_rounded),
                  title: Text('Student'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Student Option 1'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Student Option 1';
                        });
                      },
                    ),
                    ListTile(
                      title: Text('Student Option 2'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Student Option 2';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.event_note),
                  title: Text('Attendance'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Attendance Option 1'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Attendance Option 1';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.people),
                  title: Text('Client'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Client Option 1'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Client Option 1';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.design_services_outlined),
                  title: Text('Assigned Service'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Service Option 1'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Service Option 1';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(Icons.alarm),
                  title: Text('Reminders'),
                  children: <Widget>[
                    ListTile(
                      title: Text('Reminder Option 1'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Reminder Option 1';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  //leading: Icon(Icons.attach_money),
                  title: Text('Sale'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.receipt),
                      title: Text('Training'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Training';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.miscellaneous_services_sharp),
                      title: Text('Service'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Service';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  //leading: Icon(Icons.money),
                  title: Text('Purchase'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.radio),
                      title: Text('Expenses'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Expenses';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.filter_center_focus_sharp),
                      title: Text('Salary'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Salary';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.live_tv_rounded),
                      title: Text('TFour Advertisment'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Advertisment';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  //leading: Icon(Icons.money),
                  title: Text('Masters'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.import_contacts),
                      title: Text('Course'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Course';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.home_repair_service_outlined),
                      title: Text('Service'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Service';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.home_repair_service_outlined),
                      title: Text('Department'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Department';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  //leading: Icon(Icons.money),
                  title: Text('Inquiry'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.headphones_outlined),
                      title: Text('Service'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Inquiry Service';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.school_rounded),
                      title: Text('Student'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Inquiry Student';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person_add_alt_outlined),
                      title: Text('Interview'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Interview';
                        });
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  //leading: Icon(Icons.money),
                  title: Text('Portfolio'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.web),
                      title: Text('Website'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Website';
                        });
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.app_settings_alt),
                      title: Text('App'),
                      onTap: () {
                        setState(() {
                          _selectedPage = 'Apps';
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Main content area
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  '$_selectedPage',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

