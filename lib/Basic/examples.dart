import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:xd/AI/camera_preview_scanner.dart';
import 'package:xd/chat/chat_screen.dart';
import 'package:xd/Basic/data.dart';
import 'package:xd/NavBar/grammar_page.dart';
import 'package:xd/home_page.dart';
import 'package:xd/Basic/questions.dart';
import 'package:xd/login/auth_screen.dart';
import '../NavBar/translator.dart';

class Examples extends StatelessWidget {
  final LessonInfo lessonInfo;
  const Examples({Key key, this.lessonInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterTts().setLanguage("de-DE");

    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover),
          color: Colors.grey[700],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: SingleChildScrollView(
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceAround,
              runAlignment: WrapAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      lessonInfo.example ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    lessonInfo.translation ?? '',
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.white,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.black,
                      child: Text(
                        'Listen',
                        style: TextStyle(color: Colors.white),
                      ),
                      clipBehavior: Clip.hardEdge,
                      onPressed: () => FlutterTts().speak(lessonInfo.example)),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      lessonInfo.exampleB ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    lessonInfo.translationB ?? '',
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.white,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.black,
                      child: Text(
                        'Listen',
                        style: TextStyle(color: Colors.white),
                      ),
                      clipBehavior: Clip.hardEdge,
                      onPressed: () => FlutterTts().speak(lessonInfo.exampleB)),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      lessonInfo.exampleC ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    lessonInfo.translationC ?? '',
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.white,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.black,
                      child: Text(
                        'Listen',
                        style: TextStyle(color: Colors.white),
                      ),
                      clipBehavior: Clip.hardEdge,
                      onPressed: () => FlutterTts().speak(lessonInfo.exampleC)),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      lessonInfo.exampleD ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    lessonInfo.translationD ?? '',
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.blue,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.black,
                      child: Text(
                        'Listen',
                        style: TextStyle(color: Colors.white),
                      ),
                      clipBehavior: Clip.hardEdge,
                      onPressed: () => FlutterTts().speak(lessonInfo.exampleD)),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      lessonInfo.exampleE ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    lessonInfo.translationE ?? '',
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.blue,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      color: Colors.black,
                      child: Text(
                        'Listen',
                        style: TextStyle(color: Colors.white),
                      ),
                      clipBehavior: Clip.hardEdge,
                      onPressed: () => FlutterTts().speak(lessonInfo.exampleE)),
                ),
                Divider(
                  color: Colors.white,
                ),
                Text(
                  "\n Test ------------->",
                  style: TextStyle(
                    color: Colors.red,
                    backgroundColor: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ArticleQuiz()),
                    );
                  },
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 25,
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
                icon: const Icon(Icons.linked_camera),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CameraPreviewScanner()), //
                  );
                },
              ),
              IconButton(
                  icon: Icon(Icons.chat_bubble_outline),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StreamBuilder(
                            stream: FirebaseAuth.instance.onAuthStateChanged,
                            builder: (ctx, userSnapshot) {
                              if (userSnapshot.hasData) {
                                return ChatScreen();
                              }
                              return AuthScreen();
                            }),
                      ),
                    );
                  }),
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
            index: 2,
            animationDuration: Duration(milliseconds: 200),
            onTap: (value) {},
          ),
        ],
      ),
    );
  }
}
