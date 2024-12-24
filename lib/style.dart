import 'package:flutter/material.dart';

double elevatedButtonWidth = 500;
double elevatedButtonHeight = 60;

var mainContainer = Container(
  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
  decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),color: Colors.white),

);

var input = TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),

  ),
  style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),
  textAlign: TextAlign.left,


);

var theme = ThemeData(
  scaffoldBackgroundColor: Colors.lightBlue,

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minimumSize: Size(elevatedButtonWidth,elevatedButtonHeight),
      alignment: Alignment.center,
      foregroundColor: Colors.white,
      textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,
      )
    )
  ),

  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
    bodySmall: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
  ),

);