import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huzefa/container.dart';
import 'package:huzefa/widget/textfield.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
              Text("...H...",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 150
              ),
              ),
              CustomContainer(
                width: width,
                hight: height,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.red.shade600),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: CustomTextField(

                          labeltext: "Email",
                       suffix: Icons.email_outlined,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: CustomTextField(
                          suffix: Icons.visibility,
                          labeltext: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonTheme(
                        minWidth: 200,
                        height: 40,
                        child: RaisedButton(onPressed: () {},
                        child: Text("Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                          color: Colors.red.shade600,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Forget Password | OTP Login",
                      style: TextStyle(
                        color: Colors.blue
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Or sign in with'),
                      SizedBox(
                        height:2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/Group -1.png',
                            height: 70,
                            width: 50,
                          ),
                          Image.asset('assets/Group -2.png',
                            height: 70,
                            width: 50,
                          ),
                         Image.asset('assets/Group -3.png',
                           height: 70,
                           width: 50,
                         ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Don't have an account?",
                      style: TextStyle(
                        color: Colors.red
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(onPressed: () {

                      },
                        color: Colors.red.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ],
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
