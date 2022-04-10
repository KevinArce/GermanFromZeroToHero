import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:xd/constants.dart';
import 'package:xd/Basic/data.dart';
import 'package:xd/Basic/examples.dart';

class ContentPage extends StatelessWidget {
  final LessonInfo lessonInfo;
  const ContentPage({this.lessonInfo});

  @override
  Widget build(BuildContext context) {
    FlutterTts().setLanguage("de-DE");
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [gradientStartColor, gradientEndColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SafeArea(
          bottom: false,
          child: Stack(fit: StackFit.loose, children: <Widget>[
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          lessonInfo.name ?? '',
                          textAlign: TextAlign.center,
                          maxLines: 100,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.spaceAround,
                        runAlignment: WrapAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                lessonInfo.contentB ?? '',
                                textAlign: TextAlign.center,
                                maxLines: 100,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ]),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("assets/images/bg1.jpg"),
                              fit: BoxFit.cover),
                        ),
                        child: Flex(
                          direction: Axis.vertical,
                          children: <Widget>[
                            SingleChildScrollView(
                              child: DataTable(
                                  columnSpacing: 10,
                                  showCheckboxColumn: false,
                                  columns: [
                                    DataColumn(
                                        label: Text(
                                      'Subject',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Verb',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Complement',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold),
                                    ))
                                  ],
                                  rows: [
                                    DataRow(
                                        onSelectChanged: (bool selected) {
                                          if (selected) {
                                            FlutterTts().speak(
                                                lessonInfo.subject +
                                                    lessonInfo.verb +
                                                    lessonInfo.complement);
                                          }
                                        },
                                        selected: false,
                                        cells: [
                                          DataCell(Text(
                                            lessonInfo.subject,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.verb,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.complement,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ]),
                                    DataRow(
                                        onSelectChanged: (bool selected) {
                                          if (selected) {
                                            FlutterTts().speak(
                                                lessonInfo.subjectB +
                                                    lessonInfo.verbB +
                                                    lessonInfo.complementB);
                                          }
                                        },
                                        selected: false,
                                        cells: [
                                          DataCell(Text(
                                            lessonInfo.subjectB,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.verbB,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.complementB,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ]),
                                    DataRow(
                                        onSelectChanged: (bool selected) {
                                          if (selected) {
                                            FlutterTts().speak(
                                                lessonInfo.subjectC +
                                                    lessonInfo.verbC +
                                                    lessonInfo.complementC);
                                          }
                                        },
                                        selected: false,
                                        cells: [
                                          DataCell(Text(
                                            lessonInfo.subjectC,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.verbC,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.complementC,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ]),
                                    DataRow(
                                        onSelectChanged: (bool selected) {
                                          if (selected) {
                                            FlutterTts().speak(
                                                lessonInfo.subjectD +
                                                    lessonInfo.verbD +
                                                    lessonInfo.complementD);
                                          }
                                        },
                                        selected: false,
                                        cells: [
                                          DataCell(Text(
                                            lessonInfo.subjectD,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.verbD,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.complementD,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ]),
                                    DataRow(
                                        onSelectChanged: (bool selected) {
                                          if (selected) {
                                            FlutterTts().speak(
                                                lessonInfo.subjectE +
                                                    lessonInfo.verbE +
                                                    lessonInfo.complementE);
                                          }
                                        },
                                        selected: false,
                                        cells: [
                                          DataCell(Text(
                                            lessonInfo.subjectE,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.verbE,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataCell(Text(
                                            lessonInfo.complementE,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ]),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.spaceAround,
                        runAlignment: WrapAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/bg5.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              lessonInfo.content ?? '',
                              textAlign: TextAlign.center,
                              maxLines: 100,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black,
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
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.white)),
                              color: Colors.black,
                              child: Text(
                                'Question',
                                style: TextStyle(color: Colors.white),
                              ),
                              clipBehavior: Clip.hardEdge,
                              onPressed: () =>
                                  FlutterTts().speak(lessonInfo.grammar)),
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.white)),
                              color: Colors.black,
                              child: Text(
                                'Answer',
                                style: TextStyle(color: Colors.white),
                              ),
                              clipBehavior: Clip.hardEdge,
                              onPressed: () =>
                                  FlutterTts().speak(lessonInfo.grammartwo)),
                        ],
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                alignment: Alignment.bottomLeft,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                  alignment: Alignment.bottomRight,
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Examples(
                          lessonInfo: lessonInfo,
                        ),
                      ),
                    );
                  }),
            ]),
      ),
    );
  }
}
