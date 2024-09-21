import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_1/EmulatorPages/ForgotPassword/forgotpassword.dart';
//import 'package:project_1/Pages/OTPverification/login_page.dart';

class Welcomeback extends StatefulWidget {
  const Welcomeback({super.key});

  @override
  State<Welcomeback> createState() => _WelcomebackState();
}

class _WelcomebackState extends State<Welcomeback> {
  final formkey = GlobalKey<FormState>();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool passwordVisibile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [SizedBox(height: 70),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'),fit: BoxFit.cover)
                  ),
                ),
                Text('Welcome Back', style: TextStyle(fontSize: 40)),
                SizedBox(height: 50),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextFormField(
                    controller: mailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                        return "Please enter your valid email";
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Your Email',
                        suffixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3)
                        )
                    ),
                  ),),
                SizedBox(height: 20),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                        return "Please enter correct password";
                      }
                      else {
                        return null;
                      }
                    },
                    maxLength: 8,
                    controller: passController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: passwordVisibile,
                    decoration: InputDecoration(
                        hintText: 'Your Password',
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            passwordVisibile = !passwordVisibile;
                            log(passwordVisibile.toString());
                          });
                        }, icon: Icon(passwordVisibile?Icons.visibility_off:Icons.visibility)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3)
                        )
                    ),
                  ),),SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      ),
                    ),SizedBox(width: 215),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Forgotpassword()));
                        },
                        child: Text('Forgot Password',
                          style: TextStyle(fontSize: 16),),
                        style: TextButton.styleFrom(foregroundColor: Colors.black))
                  ],
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.indigoAccent,
                          minimumSize: const Size(320, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                      onPressed: () {
                        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Forgotpassword()));
                        if(formkey.currentState!.validate()){
                          print('Login SuccessFull');
                        }
                        formkey.currentState!.save();
                      }, child: Text('Log In', style: TextStyle(fontSize: 20),)
                  ),
                )
              ],
            ),
          ),
        )
        )
    );
  }

  // Widget _buildDesktopLayout() {
  //   TextEditingController mailController = TextEditingController();
  //   TextEditingController passController = TextEditingController();
  //   bool passwordVisibile = false;
    // return SingleChildScrollView(
    //   child: Center(
    //     child: Column(
    //       children: [SizedBox(height: 70),
    //         Container(
    //           height: 200,
    //           width: 200,
    //           decoration: BoxDecoration(
    //               image: DecorationImage(image: AssetImage('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'),fit: BoxFit.cover)
    //           ),
    //         ),
    //         Text('Welcome Back', style: TextStyle(fontSize: 40)),
    //         SizedBox(height: 50),
    //         Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0),
    //           child: TextFormField(
    //             controller: mailController,
    //             keyboardType: TextInputType.emailAddress,
    //             validator: (value){
    //               if(value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
    //                 return "Please enter your valid email";
    //               }
    //               else {
    //                 return null;
    //               }
    //             },
    //             decoration: InputDecoration(
    //                 hintText: 'Your Email',
    //                 suffixIcon: Icon(Icons.mail),
    //                 border: OutlineInputBorder(
    //                     borderRadius: BorderRadius.circular(3)
    //                 )
    //             ),
    //           ),),
    //         SizedBox(height: 20),
    //         Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0),
    //           child: TextFormField(
    //             validator: (value){
    //               if(value!.isEmpty||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
    //                 return "Please enter correct password";
    //               }
    //               else {
    //                 return null;
    //               }
    //             },
    //             maxLength: 8,
    //             controller: passController,
    //             keyboardType: TextInputType.emailAddress,
    //             obscureText: passwordVisibile,
    //             decoration: InputDecoration(
    //                 hintText: 'Your Password',
    //                 suffixIcon: IconButton(onPressed: () {
    //                   setState(() {
    //                     passwordVisibile = !passwordVisibile;
    //                     log(passwordVisibile.toString());
    //                   });
    //                 }, icon: Icon(passwordVisibile?Icons.visibility_off:Icons.visibility)),
    //                 border: OutlineInputBorder(
    //                     borderRadius: BorderRadius.circular(3)
    //                 )
    //             ),
    //           ),),SizedBox(height: 10),
    //         Row(mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Container(
    //               decoration: BoxDecoration(
    //               ),
    //             ),SizedBox(width: 215),
    //             TextButton(
    //                 onPressed: () {
    //                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Forgotpassword()));
    //                 },
    //                 child: Text('Forgot Password',
    //                   style: TextStyle(fontSize: 16),),
    //                 style: TextButton.styleFrom(foregroundColor: Colors.black))
    //           ],
    //         ),
    //         Padding(padding: const EdgeInsets.symmetric(vertical: 15.0),
    //           child: ElevatedButton(
    //               style: ElevatedButton.styleFrom(
    //                   foregroundColor: Colors.white,
    //                   backgroundColor: Colors.indigoAccent,
    //                   minimumSize: const Size(320, 60),
    //                   shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(8)
    //                   )
    //               ),
    //               onPressed: () {
    //                 //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Forgotpassword()));
    //                 if(formkey.currentState!.validate()){
    //                   print('Login SuccessFull');
    //                 }
    //                 formkey.currentState!.save();
    //               }, child: Text('Log In', style: TextStyle(fontSize: 20),)
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }

  // Widget _buildMobileLayout() {
  //   TextEditingController mailController = TextEditingController();
  //   TextEditingController passController = TextEditingController();
  //   bool passwordVisibile = false;
  //   return SingleChildScrollView(
  //     child: Center(
  //       child: Column(
  //         children: [SizedBox(height: 70),
  //           Container(
  //             height: 200,
  //             width: 200,
  //             decoration: BoxDecoration(
  //                 image: DecorationImage(image: AssetImage(
  //                     'assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'),
  //                     fit: BoxFit.cover)
  //             ),
  //           ),
  //           Text('Welcome Back', style: TextStyle(fontSize: 40)),
  //           SizedBox(height: 50),
  //           Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0),
  //             child: TextFormField(
  //               controller: mailController,
  //               keyboardType: TextInputType.emailAddress,
  //               validator: (value) {
  //                 if (value!.isEmpty || !RegExp(
  //                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //                     .hasMatch(value)) {
  //                   return "Please enter your valid email";
  //                 }
  //                 else {
  //                   return null;
  //                 }
  //               },
  //               decoration: InputDecoration(
  //                   hintText: 'Your Email',
  //                   suffixIcon: Icon(Icons.mail),
  //                   border: OutlineInputBorder(
  //                       borderRadius: BorderRadius.circular(3)
  //                   )
  //               ),
  //             ),),
  //           SizedBox(height: 20),
  //           Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0),
  //             child: TextFormField(
  //               validator: (value) {
  //                 if (value!.isEmpty || !RegExp(
  //                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //                     .hasMatch(value)) {
  //                   return "Please enter correct password";
  //                 }
  //                 else {
  //                   return null;
  //                 }
  //               },
  //               maxLength: 8,
  //               controller: passController,
  //               keyboardType: TextInputType.emailAddress,
  //               obscureText: passwordVisibile,
  //               decoration: InputDecoration(
  //                   hintText: 'Your Password',
  //                   suffixIcon: IconButton(onPressed: () {
  //                     setState(() {
  //                       passwordVisibile = !passwordVisibile;
  //                       log(passwordVisibile.toString());
  //                     });
  //                   },
  //                       icon: Icon(
  //                           passwordVisibile ? Icons.visibility_off : Icons
  //                               .visibility)),
  //                   border: OutlineInputBorder(
  //                       borderRadius: BorderRadius.circular(3)
  //                   )
  //               ),
  //             ),), SizedBox(height: 10),
  //           Row(mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Container(
  //                 decoration: BoxDecoration(
  //                 ),
  //               ), SizedBox(width: 215),
  //               TextButton(
  //                   onPressed: () {
  //                     Navigator.pushReplacement(context, MaterialPageRoute(
  //                         builder: (context) => Forgotpassword()));
  //                   },
  //                   child: Text('Forgot Password',
  //                     style: TextStyle(fontSize: 16),),
  //                   style: TextButton.styleFrom(foregroundColor: Colors.black))
  //             ],
  //           ),
  //           Padding(padding: const EdgeInsets.symmetric(vertical: 15.0),
  //             child: ElevatedButton(
  //                 style: ElevatedButton.styleFrom(
  //                     foregroundColor: Colors.white,
  //                     backgroundColor: Colors.indigoAccent,
  //                     minimumSize: const Size(320, 60),
  //                     shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(8)
  //                     )
  //                 ),
  //                 onPressed: () {
  //                   //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Forgotpassword()));
  //                   if (formkey.currentState!.validate()) {
  //                     print('Login SuccessFull');
  //                   }
  //                   formkey.currentState!.save();
  //                 }, child: Text('Log In', style: TextStyle(fontSize: 20),)),)
  //         ],
  //       ),
  //     ),
  //   );
  // } }

















