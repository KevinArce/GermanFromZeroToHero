import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:xd/NavBar/grammar_page.dart';
import 'package:xd/constants.dart';
import 'package:xd/login/auth_screen.dart';
import 'package:xd/secondHome_Page.dart';
import 'package:xd/NavBar/translator.dart';
import 'AI/camera_preview_scanner.dart';
import 'chat/chat_screen.dart';
import 'constants.dart';
import 'Basic/data.dart';
import 'Basic/learn_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    const Text(
                      'Deutsch',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Basics',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 24,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondHomePage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Intermediate',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 24,
                                color: Colors.yellow,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            'Advanced',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                      onChanged: (value) => {},
                      icon: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.arrow_drop_down)
                          //Image.asset('assets/images/drop_down_icon.png'),
                          ),
                      underline: SizedBox(),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                //height: 500,
                //padding: const EdgeInsets.only(left: 30),
                child: Swiper(
                  itemCount: lessons.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 70,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        size: 5,
                        activeSize: 15,
                        space: 5,
                        color: Colors.black,
                        activeColor: Colors.red),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => LearnPage(
                              lessonInfo: lessons[index],
                            ),
                          ),
                        );
                      },
                      child: Wrap(
                        //Stack was refactor in Wrap
                        children: <Widget>[
                          Stack(
                            fit: StackFit.loose,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 125.0,
                                  ),
                                  Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(height: 90),
                                            Text(
                                              lessons[index].name,
                                              style: TextStyle(
                                                fontFamily: 'Baloo',
                                                fontSize: 30,
                                                color: const Color(0xff666666),
                                                height: 1.4,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(
                                              height: 55,
                                            ),
                                            Wrap(
                                              direction: Axis.horizontal,
                                              spacing: 25,
                                              children: <Widget>[
                                                Text(
                                                  lessons[index].intro,
                                                  style: TextStyle(
                                                    fontFamily: 'Avenir',
                                                    fontSize: 18,
                                                    color:
                                                        const Color(0xffe4979e),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: secondaryTextColor,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                              Hero(
                                tag: new Text("hero1"),
                                child: Image.asset(lessons[index].iconImage),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Wrap(
        children: <Widget>[
          CurvedNavigationBar(
            color: Colors.white,
            backgroundColor: gradientEndColor,
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
            animationDuration: Duration(milliseconds: 200),
            index: 4,
            onTap: (value) {},
          ),
        ],
      ),
    );
  }
}
