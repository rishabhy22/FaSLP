import 'package:fa_slp/support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterHOD extends StatefulWidget {
  @override
  _RegisterHODState createState() => _RegisterHODState();
}

class _RegisterHODState extends State<RegisterHOD> with LoginScreenStyles {
  final hodRegKey = GlobalKey<FormState>();
  String hodUserName, hodPassword,hodPasskey;

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
            height: 142,
            top: 398,
            child: Form(
              key: hodRegKey,
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
                            hodUserName = input;
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
                            hintText: 'HOD Username...'),
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
                              hodPassword = input;
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
                              hintText: 'HOD Password...')),
                    ),
                  ),
                  MyStackWidget(
                    width: 224,
                    height: 36,
                    top: 106,
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
                              hodPassword = input;
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
                              hintText: 'HOD Passkey...')),
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
            top: 600,
            child: RaisedButton(
                color: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(sp(15))),
                child: Text(
                  'REGISTER',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
