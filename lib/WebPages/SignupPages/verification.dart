import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:project_1/WebPages/SignupPages/setpassword.dart';
import 'package:toast/toast.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> with TickerProviderStateMixin{
  GlobalKey<FormState> _formKey = GlobalKey();

  var otpController = TextEditingController();
  String otp = "";
  FocusNode focusNode = FocusNode();
  AnimationController? controller;
  int levelClock = 30;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: levelClock),
    );
    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints){
            if(constraints.maxWidth > 900) {
              return _buildDesktopLayout();
            } else {
              return _buildMobileLayout();
            }
          }
          )
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
                Text('OTP Verification',style: TextStyle(fontSize: 25, fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
                Container(
                  width: 360.0,
                  padding: const EdgeInsets.only(top: 30.0),
                  child: PinCodeFields(
                    onComplete: (onComplete) {
                      otp = onComplete;
                    },
                    onChange: (v){
                      otp = v;
                    },
                    length: 6,
                    keyboardType: TextInputType.number,
                    autoHideKeyboard: false,
                    textStyle: const TextStyle(),
                    borderColor: Colors.black,
                    borderWidth: 1,
                    fieldBorderStyle: FieldBorderStyle.square,
                    fieldBackgroundColor: Colors.white,
                    fieldHeight: 50,
                    animation: Animations.rotateRight,
                    animationDuration: Duration(seconds: 1),
                    animationCurve: Curves.fastOutSlowIn,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 20.0),
                  child: Countdown(
                      animation: StepTween(
                        begin: levelClock,
                        end: 0,
                      ).animate(controller!),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.indigoAccent,
                        minimumSize: const Size(360, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                    onPressed: (){
                  if(otp == ""){
                    ToastContext().init(context);
                    Toast.show("Please Enter OTP", gravity: Toast.bottom, duration: Toast.lengthLong);
                  }else if(otp != "" && otp.length < 6) {
                    ToastContext().init(context);
                    Toast.show("Please Enter Proper OTP", gravity: Toast.bottom, duration: Toast.lengthLong);
                  }else {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Setpassword()));
                   }
                }, child: Text("Verify"))
              ],
            )
        )
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/tfour_tech_pvt_ltd_logo-removebg-preview.png')
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('OTP Verification',style: TextStyle(fontSize: 25, fontFamily: "Montserrat",fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 360.0,
            padding: const EdgeInsets.only(top: 30.0),
            child: PinCodeFields(
              onComplete: (onComplete) {
                otp = onComplete;
              },
              onChange: (v){
                otp = v;
              },
              length: 6,
              keyboardType: TextInputType.number,
              autoHideKeyboard: false,
              textStyle: const TextStyle(),
              borderColor: Colors.black,
              borderWidth: 1,
              fieldBorderStyle: FieldBorderStyle.square,
              fieldBackgroundColor: Colors.white,
              fieldHeight: 50,
              animation: Animations.rotateRight,
              animationDuration: Duration(seconds: 1),
              animationCurve: Curves.fastOutSlowIn,
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 20.0),
          child: Countdown(
            animation: StepTween(
              begin: levelClock,
              end: 0,
            ).animate(controller!),
          ),),
          SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                //alignment: Alignment.center,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigoAccent,
                  minimumSize: const Size(360, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),
              onPressed: (){
            if(otp == ""){
              ToastContext().init(context);
              Toast.show("Please Enter OTP", gravity: Toast.bottom, duration: Toast.lengthLong);
            }else if(otp != "" && otp.length < 6) {
              ToastContext().init(context);
              Toast.show("Please Enter Proper OTP", gravity: Toast.bottom, duration: Toast.lengthLong);
            }else {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Setpassword()));
            }
          }, child: Text("Verify",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15),)
          )
        ],
      ),
    );
  }
}

class Countdown extends AnimatedWidget{
  Countdown({super.key, required this.animation}) : super(listenable: animation);
  Animation<int> animation;
  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText = '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
    return Text('Resend OTP in: '+timerText, style: const TextStyle(color: Color(0xFF083E92),fontSize: 13, fontFamily: "OpenSansRegular"),);
  }
}
