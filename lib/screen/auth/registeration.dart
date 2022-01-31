import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:huzefa/screen/auth/forget_password.dart';
import 'package:huzefa/screen/auth/login_screen.dart';
import 'package:huzefa/screen/home/home.dart';
import 'package:huzefa/widget/container.dart';
import 'package:huzefa/widget/textfield.dart';

class Registeration extends StatefulWidget {
  @override
  _RegisterationState createState() => _RegisterationState();
}
class _RegisterationState extends State<Registeration> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController firstnamename=TextEditingController();
  TextEditingController latnamecontroller=TextEditingController();
  TextEditingController cellcontroller=TextEditingController();
  TextEditingController zipcontroller=TextEditingController();
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
                              Text(
                                "Sign Up",
                                style:GoogleFonts.mcLaren(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.red.shade600
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 30),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(15),
                                  controller: firstnamename,
                                  obsecureatext: false,
                                  labeltext: "First Name",
                                  suffix: Icons.person_outline_sharp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 10),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(15),
                                  controller:latnamecontroller,
                                  obsecureatext: true,
                                  suffix: Icons.person_add_alt_1_rounded,
                                  labeltext: "Last Name",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 10),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(15),
                                  controller: emailcontroller,
                                  obsecureatext: true,
                                  suffix: Icons.email_outlined,
                                  labeltext: "Email",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 10),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(15),
                                  controller: passwordcontroller,
                                  obsecureatext: true,
                                  suffix: Icons.password,
                                  labeltext: "Password",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 10),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(15),
                                  controller: cellcontroller,
                                  obsecureatext: true,
                                  suffix: Icons.call,
                                  labeltext: "Cell Number",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 10),
                                child: CustomTextField(
                                  style: GoogleFonts.mcLaren(),
                                  contentpadding: EdgeInsets.all(15),
                                  controller: zipcontroller,
                                  obsecureatext: true,
                                  suffix: Icons.code,
                                  labeltext: "Zip Code",
                                ),
                              ),
                              SizedBox(height: 20,),
                              ButtonTheme(
                                minWidth: 200,
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
                                    }
                                  },
                                  child: Text(
                                    "Sign Up",
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
                              SizedBox(
                                height: 20,
                              ),

                              SizedBox(
                                height: 8,
                              ),
                           Text('Or sign up with'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/Group -1.png',
                                    height: 70,
                                    width: 50,
                                  ),
                                  Image.asset(
                                    'assets/Group -2.png',
                                    height: 70,
                                    width: 50,
                                  ),
                                  Image.asset(
                                    'assets/Group -3.png',
                                    height: 70,
                                    width: 50,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Already have an account?",
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              ButtonTheme(
                                height: 40,
                                minWidth: 150,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
                                  },
                                  color: Colors.red.shade600,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    "Sign In",
                                    style: GoogleFonts.mcLaren(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
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
