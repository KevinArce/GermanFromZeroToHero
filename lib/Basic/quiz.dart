import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:xd/NavBar/grammar_page.dart';
import 'package:xd/home_page.dart';
import 'package:xd/NavBar/translator.dart';
import '../constants.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new ArticleQuiz();
var quizB = new SVOQuiz();

class ArticleQuiz {
  var questions = [
    "This is a masculine article",
    "What is the article of the word ''cat'' in german",
    "Ich habe ___ Hund",
    "Wir haben eine (small) Katze",
    "This is a femenine article",
    "Does she loves you?",
    "What is the neutral article?"
  ];

  var choices = [
    ["Die", "Der", "Das", "Diese"],
    ["Der", "Das", "Die", "Dem"],
    ["Einen", "Eins", "Einem", "Ein"],
    ["Klein", "Kleine", "Klein", "Kleinem"],
    ["Der", "Das", "Die", "Dem"],
    ["Yass 😎", "Nop 😭", "Not Sure 🤔", "Der Liebe"],
    ["Der", "Das", "Die", "Dem"],
  ];

  var correctAnswers = [
    "Der",
    "Die",
    "Einen",
    "Kleine",
    "Die",
    "Nop 😭",
    "Das"
  ];

  var questions2 = [
    "This is a masculine article",
    "What is the article of the word ''cat'' in german",
    "Ich habe ___ Hund",
    "Wir haben eine (small) Katze",
  ];
}

class SVOQuiz {
  var questionsB = [
    "This is a masculine article",
    "What is the article of the word ''cat'' in german",
    "Ich habe ___ Hund",
    "Wir haben eine (small) Katze",
    "This is a femenine article",
    "Does she loves you?",
    "What is the neutral article?"
  ];

  var choicesB = [
    ["Die", "Der", "Das", "Diese"],
    ["Der", "Das", "Die", "Dem"],
    ["Einen", "Eins", "Einem", "Ein"],
    ["Klein", "Kleine", "Klein", "Kleinem"],
    ["Der", "Das", "Die", "Dem"],
    ["Yass 😎", "Nop 😭", "Not Sure 🤔", "Der Liebe"],
    ["Der", "Das", "Die", "Dem"],
  ];

  var correctAnswersB = [
    "Der",
    "Die",
    "Einen",
    "Kleine",
    "Die",
    "Nop 😭",
    "Das"
  ];
}

class Quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: new Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  border: Border.all(width: 5, color: Colors.white),
                  gradient: LinearGradient(
                    colors: [gradientStartColor, gradientEndColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(20.0)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        border: Border.all(width: 5, color: Colors.white),
                      ),
                      alignment: Alignment.centerRight,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            " Question ${questionNumber + 1} of ${quiz.questions.length}",
                            style: new TextStyle(fontSize: 22.0),
                          ),
                          new Text(
                            "Result: $finalScore ",
                            style: new TextStyle(fontSize: 22.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                        border: Border.all(width: 5, color: Colors.white),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(
                          quiz.questions[questionNumber],
                          style: new TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Button 1
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                          border: Border.all(width: 5, color: Colors.white),
                        ),
                        child: new MaterialButton(
                          minWidth: 120.0,
                          onPressed: () {
                            if (quiz.choices[questionNumber][0] ==
                                quiz.correctAnswers[questionNumber]) {
                              debugPrint("Right");
                              finalScore++;
                            } else {
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: new Text(
                            quiz.choices[questionNumber][0],
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      //Button 2
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                          border: Border.all(width: 5, color: Colors.white),
                        ),
                        child: new MaterialButton(
                          minWidth: 120.0,
                          onPressed: () {
                            if (quiz.choices[questionNumber][1] ==
                                quiz.correctAnswers[questionNumber]) {
                              debugPrint("Correct");
                              finalScore++;
                            } else {
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: new Text(
                            quiz.choices[questionNumber][1],
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Button 3
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                          border: Border.all(width: 5, color: Colors.white),
                        ),
                        child: new MaterialButton(
                          minWidth: 120.0,
                          onPressed: () {
                            if (quiz.choices[questionNumber][2] ==
                                quiz.correctAnswers[questionNumber]) {
                              debugPrint("Correct");
                              finalScore++;
                            } else {
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: new Text(
                            quiz.choices[questionNumber][2],
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      //Buttom 4
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                          border: Border.all(width: 5, color: Colors.white),
                        ),
                        child: new MaterialButton(
                          minWidth: 120.0,
                          onPressed: () {
                            if (quiz.choices[questionNumber][3] ==
                                quiz.correctAnswers[questionNumber]) {
                              debugPrint("Correct");
                              finalScore++;
                            } else {
                              debugPrint("Wrong");
                            }
                            updateQuestion();
                          },
                          child: new Text(
                            quiz.choices[questionNumber][3],
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Padding(padding: EdgeInsets.all(15.0)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                        border: Border.all(width: 5, color: Colors.white),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        onPressed: resetQuiz,
                        child: new Text(
                          "Quit",
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
        ));
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: Center(
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: new Text(
                        "Final Score: $score",
                        style: new TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(30.0)),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                        border: Border.all(width: 5, color: Colors.white),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: new MaterialButton(
                        onPressed: () {
                          questionNumber = 0;
                          finalScore = 0;
                          Navigator.pop(context);
                        },
                        child: new Text(
                          "Reset Test",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Back Home pressing the ''Home Button''",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
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
      ),
    );
  }
}
