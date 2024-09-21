import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/EmulatorPages/OTPverification/otpverification.dart';
import 'package:project_1/EmulatorPages/WelcomeBack/welcomeback.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [SizedBox(height: 100),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'))
                  ),
                ),
                Text('Forget Password', style: TextStyle(fontSize: 40),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text('To send request for rrecover password fill the details'),
                ),//SizedBox(height: 40),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                child: TextFormField(
                  maxLength: 10,
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
                  decoration: InputDecoration(
                    hintText: '+91 Moblie',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    )
                  ),
                ),),
                SizedBox(height: 2,),
                Row(//mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 245),
                    //Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Welcomeback()));
                    }, child: Text('Back To Login',style: TextStyle(fontSize: 18, color: Colors.black))),
                  ],
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor:  Colors.white,
                          minimumSize: const Size(355, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          backgroundColor: Colors.indigoAccent),
                      onPressed: (){
                        if(formkey.currentState!.validate()) {
                          print('Sent Successfill');
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Otpverification()));
                        }
                        formkey.currentState!.save();
                        //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Otpverification()));
                      }, child: Text('Sent an OTP',style: TextStyle(fontSize: 20),)),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
