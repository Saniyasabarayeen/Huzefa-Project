import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.red,
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(60),bottomRight: Radius.circular(60))
            ),
          ),
        ),
      )
    );
  }
}
