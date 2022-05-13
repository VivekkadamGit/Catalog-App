import "package:flutter/material.dart";
import 'package:flutter_for_trial/pages/home_page_2.dart';
import 'package:flutter_for_trial/widgets/theme.dart';
import 'package:flutter_for_trial/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Trial App",
    //home: BottomMenu(),
    home: HomePage2(),
    theme: MyTheme.LightTheme(),
  ));
}