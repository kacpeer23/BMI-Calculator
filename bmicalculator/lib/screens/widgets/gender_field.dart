import 'package:flutter/material.dart';

class GenderField extends StatelessWidget {
  final String? gender;
  const GenderField({this.gender});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.19,
      color: Color(0xFF444444),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            gender == 'male' ? Icons.male : Icons.female,
            size: height * 0.09,
            color: Color(0xFF18d289),
          ),
          const SizedBox(height: 15.0),
          Text(
            gender.toString().toUpperCase(),
            textScaleFactor: height / 900,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF18d289),
            ),
          ),
        ],
      ),
    );
  }
}
