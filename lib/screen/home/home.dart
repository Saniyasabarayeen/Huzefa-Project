import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:huzefa/widget/textfield.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

TextEditingController searchcontroller = TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 60,
                backgroundColor: Colors.red.shade600,
              ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Huzefa',
                        style: GoogleFonts.pacifico(
                          fontSize: 40,
                          color: Colors.red.shade600
                        ),
                      )
                    ],
                  )),
            ),
            new Container(
              color: Colors.red.shade600,
              child: Column(
                children: List.generate(12, (int index) {
                  return ListTile(
                    title: Text("Home",
                    style: GoogleFonts.mcLaren(
                      color: Colors.white,
                      fontSize: 20
                    ),
                    ),
                   leading: Icon(Icons.home,
                     color: Colors.white,
                     size: 30,
                   ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: Text(
          "Huzefa",
          style: GoogleFonts.pacifico(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                color: Colors.red.shade600,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: CustomTextField(
                    style: GoogleFonts.mcLaren(),
                    labeltext: "search",
                    contentpadding: EdgeInsets.all(15),
                    obsecureatext: false,
                    suffix: Icons.search,
                    controller: searchcontroller,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'service',
                      style: GoogleFonts.mcLaren(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
