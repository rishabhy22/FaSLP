import 'package:fa_slp/UI/LoginAsFaculty.dart';
import 'package:fa_slp/UI/LoginChoose.dart';
import 'package:fa_slp/UI/LoginasHOD.dart';
import 'package:fa_slp/UI/RegisterAsAdmin.dart';
import 'package:flutter/material.dart';

void main() => runApp(Run());

class Run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterAdmin(),
    );
  }
}