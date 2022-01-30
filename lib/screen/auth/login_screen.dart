import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:huzefa/screen/auth/forget_password.dart';
import 'package:huzefa/screen/auth/registeration.dart';
import 'package:huzefa/screen/home/home.dart';
import 'package:huzefa/widget/container.dart';
import 'package:huzefa/widget/textfield.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordcontroller=TextEditingController();
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
                          Text(
                            "Sign In",
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
                              contentpadding: EdgeInsets.all(15),
                              controller: emailcontroller,
                              obsecureatext: false,
                              labeltext: "Email",
                              suffix: Icons.email_outlined,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 30),
                            child: CustomTextField(
                              contentpadding: EdgeInsets.all(15),
                              controller: passwordcontroller,
                              obsecureatext: true,
                              suffix: Icons.visibility,
                              labeltext: "Password",
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
                                "Sign In",
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>Password(),));
                            },
                            child: Text(
                              "Forget Password",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Or sign in with'),
                          SizedBox(
                            height: 2,
                          ),
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
                            "Don't have an account?",
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ButtonTheme(
                            height: 40,
                            minWidth: 150,
                            child: RaisedButton(
                              color: Colors.red.shade600,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                "Sign Up",
                                  style: GoogleFonts.mcLaren(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Registeration(),));
                                print("no");
                              },
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
