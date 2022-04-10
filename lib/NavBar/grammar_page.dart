import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:xd/AI/camera_preview_scanner.dart';
import 'package:xd/NavBar/translator.dart';
import 'package:xd/chat/chat_screen.dart';
import 'package:xd/home_page.dart';
import 'package:xd/login/auth_screen.dart';

class GrammarPage extends StatefulWidget {
  @override
  _GrammarPageState createState() => _GrammarPageState();
}

class _GrammarPageState extends State<GrammarPage> {
  int page = 0;

  UpdateType updateType;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FlutterTts().setLanguage("de-DE");
    return new MaterialApp(
      home: new Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9
                  ],
                      colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.indigo,
                    Colors.teal
                  ])),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  //Grammar Title
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Grammar",
                        textAlign: TextAlign.center,
                        maxLines: 100,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  //Sein
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Use of ''Sein''",
                        textAlign: TextAlign.center,
                        maxLines: 100,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DataTable(
                          showCheckboxColumn: false,
                          onSelectAll: (b) {},
                          sortColumnIndex: 1,
                          sortAscending: true,
                          columns: <DataColumn>[
                            DataColumn(
                              label: Text(
                                "Subject",
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              numeric: false,
                            ),
                            DataColumn(
                              label: Text(
                                "Verb",
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              numeric: false,
                            ),
                          ],
                          rows: names
                              .map(
                                (name) => DataRow(
                                  onSelectChanged: (bool selected) {
                                    if (selected) {
                                      FlutterTts()
                                          .speak(name.subjet + name.verb);
                                    }
                                  },
                                  cells: [
                                    DataCell(
                                      Text(
                                        name.subjet,
                                        style: TextStyle(
                                          shadows: [
                                            Shadow(
                                              blurRadius: 10.0,
                                              color: Colors.blue,
                                              offset: Offset(5.0, 5.0),
                                            ),
                                          ],
                                          fontFamily: 'Avenir',
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                      ),
                                      showEditIcon: false,
                                      placeholder: false,
                                    ),
                                    DataCell(
                                      Text(
                                        name.verb,
                                        style: TextStyle(
                                          shadows: [
                                            Shadow(
                                              blurRadius: 10.0,
                                              color: Colors.blue,
                                              offset: Offset(5.0, 5.0),
                                            ),
                                          ],
                                          fontFamily: 'Avenir',
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                      ),
                                      showEditIcon: false,
                                      placeholder: false,
                                    )
                                  ],
                                ),
                              )
                              .toList()),
                    ),
                  ),
                  //Articles
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Articles",
                        textAlign: TextAlign.center,
                        maxLines: 100,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DataTable(
                        showCheckboxColumn: false,
                        onSelectAll: (b) {},
                        sortColumnIndex: 1,
                        sortAscending: true,
                        columns: <DataColumn>[
                          DataColumn(
                            label: Text(
                              "Article",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            numeric: false,
                          ),
                          DataColumn(
                            label: Text(
                              "Meaning",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            numeric: false,
                          ),
                        ],
                        rows: arts
                            .map(
                              (art) => DataRow(
                                onSelectChanged: (bool selected) {
                                  if (selected) {
                                    FlutterTts().speak(art.german);
                                  }
                                },
                                cells: [
                                  DataCell(
                                    Text(
                                      art.german,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.blue,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  ),
                                  DataCell(
                                    Text(
                                      art.english,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.blue,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  )
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  //Essen & Trinken
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Use of ''Essen'' & ''Trinken''",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DataTable(
                        showCheckboxColumn: false,
                        onSelectAll: (b) {},
                        sortColumnIndex: 1,
                        sortAscending: true,
                        columns: <DataColumn>[
                          DataColumn(
                            label: Text(
                              "Subjects",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            numeric: false,
                          ),
                          DataColumn(
                            label: Text(
                              "+ Verb",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            numeric: false,
                          ),
                        ],
                        rows: endings
                            .map(
                              (ending) => DataRow(
                                onSelectChanged: (bool selected) {
                                  if (selected) {
                                    FlutterTts().speak(ending.verbEnd);
                                  }
                                },
                                cells: [
                                  DataCell(
                                    Text(
                                      ending.verbEnd,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.blue,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  ),
                                  DataCell(
                                    Text(
                                      ending.ending,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.blue,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  )
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  //Mochten
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Use of ''Möchten''",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DataTable(
                        showCheckboxColumn: false,
                        onSelectAll: (b) {},
                        sortColumnIndex: 1,
                        sortAscending: true,
                        columns: <DataColumn>[
                          DataColumn(
                            label: Text(
                              "Möchten",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            numeric: false,
                          ),
                          DataColumn(
                            label: Text(
                              "Meaning",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            numeric: false,
                          ),
                        ],
                        rows: wants
                            .map(
                              (wants) => DataRow(
                                onSelectChanged: (bool selected) {
                                  if (selected) {
                                    FlutterTts().speak(wants.auxiliary);
                                  }
                                },
                                cells: [
                                  DataCell(
                                    Text(
                                      wants.auxiliary,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.blue,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  ),
                                  DataCell(
                                    Text(
                                      wants.meaningA,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.grey,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  )
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  //Wurden
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Use of ''Würden''",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DataTable(
                        showCheckboxColumn: false,
                        onSelectAll: (b) {},
                        sortColumnIndex: 1,
                        sortAscending: true,
                        columns: <DataColumn>[
                          DataColumn(
                            label: Text(
                              "Würde",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            numeric: false,
                          ),
                          DataColumn(
                            label: Text(
                              "Meaning",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            numeric: false,
                          ),
                        ],
                        rows: wurdes
                            .map(
                              (wurdes) => DataRow(
                                onSelectChanged: (bool selected) {
                                  if (selected) {
                                    FlutterTts().speak(wurdes.verbWurde);
                                  }
                                },
                                cells: [
                                  DataCell(
                                    Text(
                                      wurdes.verbWurde,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.blue,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  ),
                                  DataCell(
                                    Text(
                                      wurdes.meaningB,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.grey,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                        ],
                                        fontFamily: 'Avenir',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                    showEditIcon: false,
                                    placeholder: false,
                                  )
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  //Just a little bit of Space
                  Container(
                    height: 30,
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
              index: 3,
              animationDuration: Duration(milliseconds: 200),
              onTap: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}

//Data for first DataTable "Sentence"
class Sentence {
  String subjet;
  String verb;

  Sentence({this.subjet, this.verb});
}

var names = <Sentence>[
  Sentence(subjet: "Ich ", verb: "bin"),
  Sentence(subjet: "Du ", verb: "bist"),
  Sentence(subjet: "Er ", verb: "ist"),
  Sentence(subjet: "Sie ", verb: "ist"),
  Sentence(subjet: "Wir ", verb: "sind"),
  Sentence(subjet: "Sie ", verb: "sind"),
  Sentence(subjet: "Ihr", verb: "seid"),
];

//Data for second DataTable "Article"
class Article {
  String german;
  String english;

  Article({this.german, this.english});
}

var arts = <Article>[
  Article(german: "Der ", english: "Masculine Singular"),
  Article(german: "Die ", english: "Femenine Singular"),
  Article(german: "Das ", english: "Neutral Singular"),
  Article(german: "Die ", english: "Plural"),
];

//Data for third DataTable "VerbsEnding"
class VerbsEnding {
  String verbEnd;
  String ending;

  VerbsEnding({this.verbEnd, this.ending});
}

var endings = <VerbsEnding>[
  VerbsEnding(verbEnd: "Example 1:", ending: "''Essen''"),
  VerbsEnding(verbEnd: "Ich esse", ending: "I eat"),
  VerbsEnding(verbEnd: "Du isst", ending: "You eat"),
  VerbsEnding(verbEnd: "Sie/Er/Es isst", ending: "She/He/It eats"),
  VerbsEnding(verbEnd: "Ihr esst", ending: "You (P) eat"),
  VerbsEnding(verbEnd: "Wir/Sie", ending: "We/You(F) eat"),
  VerbsEnding(verbEnd: "Example 2:", ending: "''Trinken''"),
  VerbsEnding(verbEnd: "Ich trinke", ending: "I drink"),
  VerbsEnding(verbEnd: "Du trinks", ending: "You drink"),
  VerbsEnding(verbEnd: "Sie/Er/Es", ending: "She/He/It drinks"),
  VerbsEnding(verbEnd: "Ihr trinkt", ending: "You (P) drink"),
  VerbsEnding(verbEnd: "Wir/Sie trinken", ending: "We/You(F) drink"),
];

//Data for fourth Data Table "Möchten"
class Want {
  String auxiliary;
  String meaningA;

  Want({this.auxiliary, this.meaningA});
}

var wants = <Want>[
  Want(auxiliary: "Ich möchte", meaningA: "I want"),
  Want(auxiliary: "Du möchtest", meaningA: "You want"),
  Want(auxiliary: "Er möchte", meaningA: "He wants"),
  Want(auxiliary: "Sie möchte", meaningA: "She wants"),
  Want(auxiliary: "Wir möchten", meaningA: "We want"),
  Want(auxiliary: "Sie möchten", meaningA: "You (S) want"),
  Want(auxiliary: "Ihr möchtet", meaningA: "You (P) want"),
];

//Data for fifth Data Table "Würden"
class Wurde {
  String verbWurde;
  String meaningB;

  Wurde({this.verbWurde, this.meaningB});
}

var wurdes = <Wurde>[
  Wurde(verbWurde: "Ich würde", meaningB: "I would"),
  Wurde(verbWurde: "Du würdest", meaningB: "You would"),
  Wurde(verbWurde: "Er würde", meaningB: "He was"),
  Wurde(verbWurde: "Sie würde", meaningB: "She was"),
  Wurde(verbWurde: "Wir würden", meaningB: "We was"),
  Wurde(verbWurde: "Sie würden", meaningB: "You (S) would"),
  Wurde(verbWurde: "Ihr würdet", meaningB: "You (P) would"),
];
