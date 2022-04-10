import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:xd/NavBar/translator.dart';
import 'quiz.dart';
import '../constants.dart';
import '../NavBar/grammar_page.dart';
import '../home_page.dart';

class ArticleQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ArticleQuizState();
  }
}

class ArticleQuizState extends State<ArticleQuiz> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: new Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
          margin: const EdgeInsets.all(15.0),
          child: new MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            height: 50.0,
            color: Colors.green,
            onPressed: startQuiz,
            child: new Text(
              "Articles Test 🤓",
              style: new TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Wrap(
        children: <Widget>[
          CurvedNavigationBar(
            color: Colors.white,
            backgroundColor: Colors.black,
            buttonBackgroundColor: Colors.white,
            height: 50,
            items: <Widget>[
              IconButton(
                icon: Icon(Icons.g_translate),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Translador()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.library_books),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GrammarPage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
            index: 0,
            animationDuration: Duration(milliseconds: 200),
            onTap: (value) {},
          ),
        ],
      ),
    );
  }

  void startQuiz() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Quiz1()));
    });
  }
}
