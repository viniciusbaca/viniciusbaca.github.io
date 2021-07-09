import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 45, 56, 1),
      body: Center(
        child: Container(
          color: Color.fromRGBO(227, 169, 107, 1),
          margin: EdgeInsets.all(40),
          constraints: BoxConstraints(
            minWidth: 800,
            maxWidth: 1500,
            minHeight: MediaQuery.of(context).size.height * 0.8,
            maxHeight: MediaQuery.of(context).size.height * 0.9,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I'm Baca",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text("A undergrad student at USP, pursuing a Bachelor "
                    "of Information Systems, currently in the fourth period.\n"
                    "oi giu como a senhora esta hein \n testando gab")
              ],
            ),
          ),
        ),
      ),
    );
  }
}