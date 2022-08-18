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
            style: TextStyle(
                fontWeight: greeter ? FontWeight.bold : FontWeight.normal,
                fontSize: greeter ? 20 : 18),
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
        child: SingleChildScrollView(
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
                  desc: "A undergrad student at USP, studying to be a professional "
                        "of the finance industry, having a tech background.",
                  greeter: true,
                ),
                titleAndDesc(
                  title: "Education",
                  desc: "Pursuing a Bachelor of Information Systems at ICMC - "
                      "USP, the Institute of Mathematics and Computer Science at "
                      "São Carlos, currently in the fourth period.",
                ),
                titleAndDesc(
                  title: "Work",
                  desc: "Currently I'm a Operations Analyst at U-Get, a startup"
                      " in the computer vision industry. My main activities are"
                      " managing the operations of 50 new machines to the market,"
                      " develop a app that's the core of the setup and maintenance"
                      " of the machines of the company and I also keep the"
                      " backoffice activities of the company and talent"
                      " acquisition.",
                ),
                titleAndDesc(
                    title: "Skills",
                    desc: /*"My most solid technical skill is in Flutter, which"
                        " I developed a mobile marketplace (https://hort-e.com/)"
                        " to connect rural producers and food stores as the product"
                        " for a startup I was a Co-Founder."*/
                        "Right now I'm starting my study in mathematical finance,"
                        " corporate finance, and studying more in depth python and"
                        " data science/scrapping libs. Also performing side"
                        " projects mainly in this ecosystem, such as the Bloomberg"
                        " Hackhathon, where in a great team we developed a ETF"
                        " monitor in the Bloomberg Terminal, so the fund managers"
                        " can gather all the information about any ETF that he "
                        " will analyze."),
                titleAndDesc(
                  title: "Interests",
                  desc:
                      "In my laptop I have Arch Linux for daily use and Neovim"
                      " as my tool for coding (still a beginner).\n"
                      "In my spare time I enjoy playing with my dog, hang out"
                      " with friends and read books, currently I'm more in "
                      "technical books for fun, such as 'The Rust Programming "
                      "Language and 'Fluent Python'.\n"
                      //"I'm genuinely interested in people development.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
