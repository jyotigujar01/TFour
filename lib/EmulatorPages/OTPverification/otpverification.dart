import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:project_1/EmulatorPages/SetPassword/setpassword.dart';

class Otpverification extends StatefulWidget {
  const Otpverification({super.key});

  @override
  State<Otpverification> createState() => _OtpverificationState();
}

class _OtpverificationState extends State<Otpverification> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  TextEditingController text4 = TextEditingController();
  TextEditingController text5 = TextEditingController();
  TextEditingController text6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [SizedBox(height: 120),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png'))
                ),
              ),
              Text('OTP Verification', style: TextStyle(fontSize: 40),),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myInputBox(context, text1),
                  myInputBox(context, text2),
                  myInputBox(context, text3),
                  myInputBox(context, text4),
                  myInputBox(context, text5),
                  myInputBox(context, text6),
              //     SizedBox(
              //       height: 64,
              //       width: 56,
              //       child: TextField(
              //         style: Theme.of(context).textTheme.headlineLarge,
              //         keyboardType: TextInputType.number,
              //         textAlign: TextAlign.center,
              //         inputFormatters: [
              //           LengthLimitingTextInputFormatter(1),
              //           FilteringTextInputFormatter.digitsOnly,
              //         ],
              //       ),
              //     ),
                 ],
               ),SizedBox(height: 50),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('Resend OTP in: 0:18'),
                  )
                ],
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: const Size(360, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      backgroundColor: Colors.indigoAccent
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Setpassword()));
                    },
                    child: Text('Verify', style: TextStyle(fontSize: 20),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget myInputBox(BuildContext context,TextEditingController controller){
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: const BorderRadius.all(Radius.circular(5)),
    ),
    child: TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      //maxLength: 1,
      style: const TextStyle(fontSize: 28),
    ),
  );
}