import 'package:fa_slp/support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginChoose extends StatelessWidget with LoginChooseScreenStyle {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: <Widget>[
          MyStackWidget(
            start: 137,
            width: 100,
            top: 282,
            height: 100,
            child: Image.asset('assets/Images/download.jpg'),
          ),
          MyStackWidget(
            start: 158,
            width: 60,
            top: 429,
            height: 18,
            child: Text(
              'Login  As',
              style: TextStyle(color: textColor, fontSize: 17),
            ),
          ),
          MyStackWidget(
            start: 23,
            width: 100,
            top: 494,
            height: 34,
            child: Container(
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(sp(10)),
                boxShadow: [
                  BoxShadow(
                      color: shadowColor,
                      blurRadius: 5,
                      offset: Offset(
                        2.0, // horizontal, move right 10
                        2.0, // vertical, move down 10
                      ))
                ]),
              child: Center(
                child: Text(
                  'STAFF',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          MyStackWidget(
            start: 137,
            width: 100,
            top: 494,
            height: 34,
            child: Container(
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(sp(10)),
                  boxShadow: [
                    BoxShadow(
                        color: shadowColor,
                        blurRadius: 5,
                        offset: Offset(
                          2.0, // horizontal, move right 10
                          2.0, // vertical, move down 10
                        ))
                  ]),
              child: Center(
                child: Text(
                  'ADMIN',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          MyStackWidget(
            start: 251,
            width: 100,
            top: 494,
            height: 34,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(sp(10)),
                  color: buttonColor,
                  boxShadow: [
                    BoxShadow(
                        color: shadowColor,
                        blurRadius: 5,
                        offset: Offset(
                          2.0, // horizontal, move right 10
                          2.0, // vertical, move down 10
                        ))
                  ]),
              child: Center(
                child: Text(
                  'FACULTY',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
