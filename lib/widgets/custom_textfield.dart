import 'package:flutter/material.dart';

import '../constants.dart';
class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  CustomTextField({@required this.icon , @required this.hint});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        cursorColor: kMainColor,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: kMainColor,
          ),
          hintText: hint,
          filled: true,
          fillColor: kSeconderyColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}