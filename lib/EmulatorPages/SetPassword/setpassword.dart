import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/EmulatorPages/WelcomeBack/welcomeback.dart';

class Setpassword extends StatefulWidget {
  const Setpassword({super.key});

  @override
  State<Setpassword> createState() => _SetpasswordState();
}

class _SetpasswordState extends State<Setpassword> {
  final formkey = GlobalKey<FormState>();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  bool passwordVisible = false;
  bool confmwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [SizedBox(height: 100,),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'))
                  ),
                ),
                Text('Set Password', style: TextStyle(fontSize: 40),
                ),SizedBox(height: 50),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 34),
                child: TextFormField(
                  maxLength: 6,
                  controller: passController,
                  obscureText: passwordVisible,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter valid password";
                    }else if(value!.length<6){
                      return "Please enter 6 digit password";
                    }else {
                      return null;
                    }

                  },
                  decoration: InputDecoration(
                    hintText: 'New Password',
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                        log(passwordVisible.toString());
                      });
                    }, icon: Icon(passwordVisible?Icons.visibility_off:Icons.visibility)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3)
                    )
                  ),
                ),
                ),SizedBox(height: 20),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: TextFormField(
                    maxLength: 6,
                    controller: confirmpassController,
                    obscureText: confmwordVisible,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter valid password";
                      }else if(value!.length<6){
                        return "Please enter 10 digit number";
                      }
                      else if(value!=passController.text) {
                        return "No Match";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            confmwordVisible = !confmwordVisible;
                            log(confmwordVisible.toString());
                          });
                        }, icon: Icon(confmwordVisible?Icons.visibility_off:Icons.visibility)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3)
                        )
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 50.0),
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
                        if(formkey.currentState!.validate()){
                          print('Update SuccessFull');
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcomeback()));
                        }
                  }, child: Text('Update Password', style: TextStyle(fontSize: 20),)),
                )
             ],
            ),
          ),
        ),
      ),
    );
  }
}

