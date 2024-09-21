import 'package:flutter/material.dart';
import 'package:project_1/WebPages/SignupPages/forgetpassword.dart';
import 'package:project_1/WebPages/SignupPages/weblogin.dart';
import 'package:sizer/sizer.dart';


class Setpassword extends StatefulWidget {
  const Setpassword({super.key});

  @override
  State<Setpassword> createState() => _SetpasswordState();
}

class _SetpasswordState extends State<Setpassword> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  bool isShowPass = true;
  bool isShowConfirm = true;



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
                child: Text("Set Password", style: TextStyle(fontSize: 25, fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 50,right: 50),
                child: _buildFormFields("New Password"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 50,right: 50),
                child: SizedBox(
                  width: 460.0,
                  child: TextFormField(
                    controller: confirmpassController,
                    obscureText: isShowConfirm,
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
                    style: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.black),
                    decoration:  InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.grey),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(),
                        suffixIcon: InkWell(
                          child: Icon(
                            isShowConfirm ? Icons.visibility_off : Icons.visibility,
                            size: 20,
                          ),
                          onTap: (){
                            print("object");
                            setState(() {
                              isShowConfirm = !isShowConfirm;
                            });
                          },
                        )
                    ),
                    onChanged: (val){},
                  ),
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.only(left: 50,right: 50),
              //   width: 460,
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: Padding(
              //       padding: EdgeInsets.only(top: 20),
              //       child: InkWell(
              //         onTap: (){
              //           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Forgetpassword()));
              //         },
              //         child: Text("Forgot Password",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
              //       ),
              //     ),
              //   ),
              // ),
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
                    if(_formKey.currentState!.validate()){
                      print('Update SuccessFull');
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPages()));
                    }
                  },child: Text("Update",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15),)
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
          child: Text("Set Password",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0,left: 50,right: 50),
          child: _buildFormFields("New Password"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 50,right: 50),
          child: SizedBox(
            width: 460.0,
            child: TextFormField(
              controller: confirmpassController,
              obscureText: isShowConfirm,
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
              style: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.black),
              decoration:  InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(fontFamily: "Montserrat",fontSize: 15,color: Colors.grey),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                  suffixIcon: InkWell(
                    child: Icon(
                      isShowConfirm ? Icons.visibility_off : Icons.visibility,
                      size: 20,
                    ),
                    onTap: (){
                      print("object");
                      setState(() {
                        isShowConfirm = !isShowConfirm;
                      });
                    },
                  )
              ),
              onChanged: (val){},
            ),
          ),
        ),
        // SizedBox(
        //   width: 400,
        //   child: Align(
        //     alignment: Alignment.centerRight,
        //     child: Padding(
        //       padding: EdgeInsets.only(top: 20),
        //       child: InkWell(
        //         onTap: (){
        //           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Forgetpassword()));
        //         },
        //         child: Text("Forgot Password",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
        //       ),
        //     ),
        //   ),
        // ),
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
              if(_formKey.currentState!.validate()){
                print('Update SuccessFull');
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPages()));
              }
            }, child: Text("Update",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 15)))


      ],
    );
  }

  Widget _buildFormFields(String labeltext,{FocusNode? focus}) {
    TextEditingController controller = TextEditingController();

    return SizedBox(
      width: 460.0,
      child: TextFormField(
        controller: passController,
        obscureText: isShowPass,
        focusNode: focus,
        validator: (value){
          if(value!.isEmpty){
            return "Please enter valid password";
          }else if(value!.length<6){
            return "Please enter 10 digit number";
          }
          else if(value!=confirmpassController.text) {
            return "No Match";
          }else{
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
            suffixIcon: InkWell(
              child: Icon(
                isShowPass ? Icons.visibility_off : Icons.visibility,
                size: 20,
              ),
              onTap: (){
                print("object");
                setState(() {
                  isShowPass = !isShowPass;
                });
              },
            )
        ),
        onChanged: (val){},
      ),
    );
  }
}
