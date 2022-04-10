import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xd/constants.dart';
import 'package:xd/NavBar/grammar_page.dart';
import 'package:xd/home_page.dart';
import 'package:xd/NavBar/translator.dart';
import 'package:xd/login/auth_screen.dart';
import 'chat/chat_screen.dart';
import 'constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondHomePage extends StatefulWidget {
  @override
  _SecondHomePageState createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: SafeArea(
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Image.asset("assets/IconLogo.png"),
                          Container(
                            child: Center(
                              child: const Text(
                                "Working On It!\n \n Meanwhile... \n #StayHome 🙏",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            child: Center(
                              child: const Text(
                                "Follow us on: \n \n Instagram: @ArceLabSV",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                          ),
                          Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Instagram',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch(
                                              'https://www.instagram.com/arcelabsv/');
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: const Text(
                                "Twitter: @ArceLabs",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                          ),
                          Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Twitter',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch(
                                              'https://twitter.com/ArceLabs');
                                        },
                                    ),
                                  ],
                                ),
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
        ],
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
            index: 1,
            animationDuration: Duration(milliseconds: 200),
            onTap: (value) {},
          ),
        ],
      ),
    );
  }
}
