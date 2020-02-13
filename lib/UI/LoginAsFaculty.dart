import 'package:fa_slp/support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFaculty extends StatefulWidget {
  @override
  _LoginFacultyState createState() => _LoginFacultyState();
}

class _LoginFacultyState extends State<LoginFaculty> with LoginScreenStyles {
  final facLoginKey = GlobalKey<FormState>();
  String facUserName, facPassword;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: <Widget>[
          MyStackWidget(
            width: 100,
            start: 131,
            height: 100,
            top: 215,
            child: Image.asset('assets/Images/download.jpg'),
          ),
          MyStackWidget(
            width: 224,
            start: 76,
            height: 89,
            top: 398,
            child: Form(
              key: facLoginKey,
              child: Stack(
                children: <Widget>[
                  MyStackWidget(
                    width: 224,
                    height: 36,
                    top: 0,
                    start: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(sp(40)),
                          boxShadow: [
                            BoxShadow(
                                color: shadowColor,
                                blurRadius: 5,
                                offset: Offset(
                                  2.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ))
                          ]),
                      child: TextFormField(
                        cursorColor: buttonColor,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: typeTextColor),
                        onChanged: (input) {
                          setState(() {
                            facUserName = input;
                          });
                        },
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(sp(40)),
                                borderSide:
                                    BorderSide(color: bgColor, width: 2)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(sp(40)),
                                borderSide:
                                    BorderSide(color: bgColor, width: 2)),
                            hintText: 'Faculty Username...'),
                      ),
                    ),
                  ),
                  MyStackWidget(
                    width: 224,
                    height: 36,
                    top: 53,
                    start: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(sp(40)),
                          boxShadow: [
                            BoxShadow(
                                color: shadowColor,
                                blurRadius: 5,
                                offset: Offset(
                                  2.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ))
                          ]),
                      child: TextFormField(
                          obscureText: true,
                          cursorColor: buttonColor,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: typeTextColor),
                          onChanged: (input) {
                            setState(() {
                              facPassword = input;
                            });
                          },
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(sp(40)),
                                  borderSide:
                                      BorderSide(color: bgColor, width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(sp(40)),
                                  borderSide:
                                      BorderSide(color: bgColor, width: 2)),
                              hintText: 'Faculty Password...')),
                    ),
                  )
                ],
              ),
            ),
          ),
          MyStackWidget(
            width: 126,
            start: 125,
            height: 38,
            top: 559,
            child: RaisedButton(
                color: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(sp(15))),
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
