import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:huzefa/screen/auth/forget_password.dart';
import 'package:huzefa/screen/home/home.dart';
import 'package:huzefa/widget/container.dart';
import 'package:huzefa/widget/textfield.dart';

class Password extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Password> {
  final _formKey = GlobalKey<FormState>();
TextEditingController passwordcontroller=TextEditingController();
TextEditingController confirmpassword=TextEditingController();
TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(color: Colors.red.shade600),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Huzefa',
                    style: GoogleFonts.pacifico(
                        fontSize: 60,
                        color: Colors.white
                    ),
                  ),
                  CustomContainer(
                    width: width,
                    hight: height,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Forget Password",
                                style:GoogleFonts.mcLaren(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                    color: Colors.red.shade600
                                )
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 30),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding:EdgeInsets.all(10),
                                  controller: emailcontroller,
                                  obsecureatext: false,
                                  labeltext: "Email",
                                  suffix: Icons.email_outlined,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 15),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(10),
                                  controller: passwordcontroller,
                                  obsecureatext: true,
                                  suffix: Icons.visibility,
                                  labeltext: "New Password",
                                ),
                              ),
                              Padding(
                                padding:EdgeInsets.only(left: 30, right: 30, top: 15 ),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(10),
                                  controller:confirmpassword ,
                                  obsecureatext: true,
                                  suffix: Icons.visibility,
                                  labeltext: "Confirm Password",
                                ),
                              ),
                              SizedBox(height: 50,),
                              ButtonTheme(
                                minWidth: 200,
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()&&passwordcontroller.text==confirmpassword.text){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
                                    }else{
                                     Fluttertoast.showToast(msg: 'password not match');
                                    };
                                  },
                                  child: Text(
                                    "Reset",
                                    style: GoogleFonts.mcLaren(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  color: Colors.red.shade600,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));

  }
}
