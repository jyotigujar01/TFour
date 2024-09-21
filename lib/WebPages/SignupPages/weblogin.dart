import 'package:flutter/material.dart';
import 'package:project_1/WebPages/SignupPages/forgetpassword.dart';
import 'package:project_1/WebPages/InternalPages/menu_bar.dart';
import 'package:sizer/sizer.dart';



class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isShow = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formKey,
          child: LayoutBuilder(
              builder: (context,constraints){
                if (constraints.maxWidth > 700) {
                  // Desktop layout
                  return _buildDesktopLayout();
                } else {
                  // Mobile layout
                  return _buildMobileLayout();
                }
              }
          ),
        )
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                padding: EdgeInsets.all(20),
                color: Color(0xffE8E8F1),
              ),
              Image.asset("assets/images/login.png",height: 500,width: 500,)
            ],
          ),
        ),
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

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome Back", style: TextStyle(fontSize: 25, fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 50,right: 50),
                child: _buildFormFields("Your Email"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 50,right: 50),
                child: SizedBox(
                  width: 460.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is must to login.";
                      } else if (value.length < 8) {
                        return "At least 8 characters / numbers require in Password.";
                      } else {
                        return null;
                      }
                    },
                    controller: _passwordController,
                    obscureText: isShow,
                    style: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.black),
                    decoration:  InputDecoration(
                        labelText: "Your Password",
                        labelStyle: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.grey),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        suffixIcon: InkWell(
                          child: Icon(
                            isShow ? Icons.visibility_off : Icons.visibility,
                            size: 20,
                          ),
                          onTap: (){
                            print("object");
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                        )
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Forgetpassword()));
                      },
                      child: Text("Forgot Password",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
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
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  if (_emailController.text == "tfour@gmail.com" &&
                      _passwordController.text == "12345678") {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mainview()));
                  } else {

                  }

                }
                setState(() {});
              },child: Text("Log In",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15),)
              ),

            ],
          ),
        ),
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
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text("Welcome Back",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0,left: 50,right: 50),
          child: _buildFormFields("Your Email"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 50,right: 50),
          child: SizedBox(
            width: 460.0,
            child: TextFormField(
              controller: _passwordController,
              obscureText: isShow,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password is must to login.";
                } else if (value.length < 8) {
                  return "At least 8 characters / numbers require in Password.";
                } else {
                  return null;
                }
              },
              style: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.black),
              decoration:  InputDecoration(
                  labelText: "Your Password",
                  labelStyle: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.grey),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                  suffixIcon: InkWell(
                    child: Icon(Icons.visibility_off,size: 20,),
                    onTap: (){
                      print("object");
                      setState(() {
                        isShow = !isShow;
                      });
                    },
                  )
              ),
              onChanged: (val){},
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Forgetpassword()));
                },
                child: Text("Forgot Password",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
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
            onPressed: (){

              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                if (_emailController.text == "tfour@gmail.com" &&
                    _passwordController.text == "12345678") {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mainview()));
                } else {

                }

              }
              setState(() {});
        }, child: Text("Log In",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15)))


      ],
    );
  }

  Widget _buildFormFields(String labeltext,{FocusNode? focus}) {
    TextEditingController controller = TextEditingController();
    controller = _emailController;

    return SizedBox(
      width: 460.0,
      child: TextFormField(
        controller: controller,
        focusNode: focus,
        validator: (value) {
          if(value!.isEmpty){
            return "Please enter your email id.";
          } else if (value.isNotEmpty &&
              !RegExp(r'^(([^<>()[\]\\.,;:\s@]+(\.[^<>()[\]\\.,;:\s@]+)*)|(.+))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-\d]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)) {
            return "Enter a valid email id.";
          } else {
            return null;
          }
        },
        style: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.black),
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.grey),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
          disabledBorder: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(),
        ),
        onChanged: (val){},
      ),
    );
  }
}
