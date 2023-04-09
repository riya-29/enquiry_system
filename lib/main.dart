import 'package:enquiry_system/Login.dart';
import 'package:enquiry_system/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Times New Roman',
      primaryColor: Colors.deepPurple.shade300,
        primarySwatch: Colors.deepPurple,
    ),
    debugShowCheckedModeBanner: false,
    home: SignUp(),
  ));
}
