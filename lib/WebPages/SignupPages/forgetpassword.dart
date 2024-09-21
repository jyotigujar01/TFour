// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:project_1/WebPages/login_page.dart';
//
// class Forgotpassword extends StatefulWidget {
//   const Forgotpassword({super.key});
//
//   @override
//   State<Forgotpassword> createState() => _ForgotpasswordState();
// }
//
// class _ForgotpasswordState extends State<Forgotpassword> {
//   final formkey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: formkey,
//         child: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               children: [SizedBox(height: 100),
//                 Container(
//                   height: 200,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(image: AssetImage('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'))
//                   ),
//                 ),
//                 Text('Forget Password', style: TextStyle(fontSize: 40),
//                 ),
//                 Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//                   child: Text('To send request for recover password fill the details'),
//                 ),//SizedBox(height: 40),
//                 Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
//                   child: TextFormField(
//                     maxLength: 10,
//                     keyboardType: TextInputType.number,
//                     inputFormatters: <TextInputFormatter>[
//                       FilteringTextInputFormatter.allow(RegExp("[0-9]")),
//                     ],
//                     validator: (value){
//                       if(value!.isEmpty){
//                         return "Please enter valid number";
//                       }else if(value!.length<10){
//                         return "Please enter 10 digit number";
//                       }
//                       else {
//                         return null;
//                       }
//                     },
//                     decoration: InputDecoration(
//                         hintText: '+91 Moblie',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(5.0)
//                         )
//                     ),
//                   ),),
//                 SizedBox(height: 2,),
//                 Row(//mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     SizedBox(width: 245),
//                     //Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
//                     TextButton(onPressed: (){
//                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
//                     }, child: Text('Back To Login',style: TextStyle(fontSize: 18, color: Colors.black))),
//                   ],
//                 ),
//                 Padding(padding: const EdgeInsets.symmetric(vertical: 20.0),
//                   child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           foregroundColor:  Colors.white,
//                           minimumSize: const Size(355, 60),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(3)
//                           ),
//                           backgroundColor: Colors.indigoAccent),
//                       onPressed: (){
//                         if(formkey.currentState!.validate()) {
//                           print('Sent Successfull');
//                           //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ));
//                         }
//                         formkey.currentState!.save();
//                         //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Otpverification()));
//                       }, child: Text('Sent an OTP',style: TextStyle(fontSize: 20),)),)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/WebPages/SignupPages/verification.dart';
import 'package:project_1/WebPages/SignupPages/weblogin.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
          child: LayoutBuilder(
              builder: (context, constraints){
                if(constraints.maxWidth > 700) {
                  return _buildDesktopLayout();
                } else {
                  return _buildMobileLayout();
                }
              }
          )
      ),
    );
  }

 Widget _buildDesktopLayout() {
    return Row(
      children: [
        Expanded(child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              padding: const EdgeInsets.all(20),
              color: Color(0xffE8E8F1),
            ),
            Image.asset('assets/images/login.png', height: 500, width: 500,)
          ],
        )),
        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png')
                ),
                Text('Forgot Password',style: TextStyle(fontSize: 25, fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
                Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 50, right: 50),
                child: Text("To send request for recover password fill the details",
                    style: TextStyle(fontSize: 12, fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
                ),
                Padding(padding: const EdgeInsets.only(top: 20.0, left: 50, right: 50),
                child: SizedBox(
                  width: 460.0,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                    ],
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter valid number";
                      }else if(value!.length<10){
                        return "Please enter 10 digit number";
                      }
                      else {
                        return null;
                      }
                    },
                    style: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.black),
                    decoration:  InputDecoration(
                      prefixText: "+91 ",
                      labelText: "+91 Mobile",
                      labelStyle: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.grey),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(),
                      disabledBorder: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(),
                    ),
                    onChanged: (val){},
                  ),
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50,right: 50),
                  width: 460,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPages()));
                        },
                        child: Text("Back to Login",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.indigoAccent,
                        minimumSize: const Size(470, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {
                        print('Sent Successfill');
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Verification()));
                      }
                      _formKey.currentState!.save();
                    },child: Text("Send an OTP",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15),)
                ),
              ],
            ))
      ],
    );
 }

 Widget _buildMobileLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 150,
            width: 150,
            child: Image.asset('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png')
        ),
        Text('Forgot Password',style: TextStyle(fontSize: 25, fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 50, right: 50),
          child: Text("To send request for recover password fill the details",
              style: TextStyle(fontSize: 10, fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
        ),
        Padding(padding: const EdgeInsets.only(top: 20.0, left: 50, right: 50),
          child: SizedBox(
            width: 400.0,
            child: TextFormField(
              // maxLength: 10,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
              ],
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter valid number";
                  }else if(value!.length<10){
                    return "Please enter 10 digit number";
                  }
                  else {
                    return null;
                  }
                },
                style: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.black),
                decoration:  InputDecoration(
                  prefixText: "+91 ",
                  labelText: "+91 Mobile",
                  labelStyle: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.grey),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                ),
              onChanged: (val){},
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 50,right: 50),
          width: 400,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPages()));
                },
                child: Text("Back to Login",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.indigoAccent,
                minimumSize: const Size(410, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                )
            ),
            onPressed: () {
              if(_formKey.currentState!.validate()) {
                print('Sent Successfill');
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Verification()));
              }
              _formKey.currentState!.save();
            },child: Text("Send an OTP",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15),)
        ),
      ],
    );
 }
}

