import 'package:flutter/material.dart';
import 'package:uyir_angadi/modules/Mainpage_tamil.dart';
import 'Mainpage.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  gotoSecondActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Mainpage_tamil()),
    );
  }

  gotoSecondActivity1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Mainpage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: <Color>[
            Colors.white,
            Colors.white,
            Colors.deepPurple[50],
            Colors.deepPurple[100],
            Colors.deepPurple[200],
          ]),
        ),
        child: Center(
          child: Container(
            height: 200,
            width: 300,
            child: Container(
              width: 500,
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'CHOOSE YOUR LANGUAGE',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        shadows: [
                          Shadow(
                              color: Colors.blueAccent,
                              offset: Offset(2, 1),
                              blurRadius: 10)
                        ]),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      gotoSecondActivity(context);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "தமிழ்",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      gotoSecondActivity1(context);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "English",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
