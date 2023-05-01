import 'package:flutter/material.dart';
import 'package:aibirdie/constants.dart';

Widget solidButton(String text, Function onTap) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          // color: Color(0xff047bfe),
          backgroundColor: softGreen,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text(text, style: level2softw.copyWith(fontFamily: 'OS_bold')),
      ),
    ),
  );
}

Widget lightButton(String text, Function onTap) {
  return Container(
    width: double.infinity,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          side: BorderSide(
              style: BorderStyle.solid, color: Colors.black, width: 1.5)),
      onPressed: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text(text, style: level1),
      ),
    ),
  );
}
