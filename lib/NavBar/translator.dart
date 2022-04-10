import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:translator/translator.dart';
import 'package:xd/AI/camera_preview_scanner.dart';
import 'package:xd/NavBar/grammar_page.dart';
import 'package:xd/chat/chat_screen.dart';
import 'package:xd/home_page.dart';
import 'package:xd/login/auth_screen.dart';
import '../constants.dart';

class Translador extends StatefulWidget {
  @override
  _TransladorState createState() => _TransladorState();
}

class _TransladorState extends State<Translador> {
  GoogleTranslator translator =
      new GoogleTranslator(); //using google translator

  String out;
  final lang = TextEditingController(); //getting text

  void trans() {
    translator.translate(lang.text, to: 'de') //English to German
        .then((output) {
      setState(() {
        out = output
            .toString(); //placing the translated text to the String to be used
      });
      print(out);
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterTts().setLanguage("de-DE");
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset('assets/IconLogo.png'),
                  Text(
                    'Translator',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.blue, spreadRadius: 3),
                      ],
                    ),
                    child: Wrap(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Your text here',
                              labelText: 'Auto detect the language 😉'),
                          controller: lang,
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    splashColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.white),
                    ),
                    color: Colors.black,
                    child: Text(
                      "Translate",
                      style: TextStyle(color: Colors.white),
                    ), //on press to translate the language using function
                    onPressed: () {
                      lang.text.isEmpty ? print('Empty') : trans();
                    },
                  ),
                  Divider(
                    color: Colors.black,
                    height: 20,
                    thickness: 5,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.blue, spreadRadius: 3),
                      ],
                    ),
                    child: Wrap(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            if (lang.text.isNotEmpty)
                              Text(
                                out.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 20),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                      splashColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text(
                        'Listen',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.black,
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {
                        lang.text.isEmpty
                            ? print('Empty')
                            : FlutterTts().speak(out);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Wrap(
        children: <Widget>[
          CurvedNavigationBar(
            color: Colors.white,
            backgroundColor: navigationColor,
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
