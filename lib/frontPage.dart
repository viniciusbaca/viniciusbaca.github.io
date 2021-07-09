import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  Widget titleAndDesc({
    String title = '',
    String desc = '',
    bool greeter = false,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: greeter ? 30 : 25,
            ),
          ),
          Text(
            desc,
            style: TextStyle(fontSize: greeter ? 20 : 18),
          ),
        ],
      ),
    );
  }

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
          ),
          child: Column(
            children: [
              titleAndDesc(
                title: "Hi, I'm Baca",
                desc: "A undergrad student at USP, mainly interested in "
                    "technology and its applications into business strategy.",
                greeter: true,
              ),
              titleAndDesc(
                title: "Education",
                desc: "Pursuing a Bachelor of Information Science at ICMC - "
                    "USP, the Institute of Mathematics and Computer Science at "
                    "São Carlos, currently in the fourth period.",
              ),
              titleAndDesc(
                title: "Work",
                desc: "Currently I'm a Operations Analyst at U-Get, a startup"
                    " in the computer vision industry. My main activities are"
                    " managing the operations of 50 new machines to the market,"
                    " develop a app that's the core of the setup and maintenance"
                    " of all machines of the company.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
