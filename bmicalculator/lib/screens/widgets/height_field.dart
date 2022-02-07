import 'package:flutter/material.dart';

class HeightField extends StatefulWidget {
  const HeightField({Key? key}) : super(key: key);

  @override
  _HeightFieldState createState() => _HeightFieldState();
}

class _HeightFieldState extends State<HeightField> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    double val = 1;
    return Container(
      height: height * 0.25,
      width: width,
      color: Color(0xFF444444),
      child: Column(
        children: [
          Text(
            'HEIGHT',
            textScaleFactor: height / 900,
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFF18d289),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: height * 0.09,
          ),
          Slider(
            min: 1,
            max: 10,
            value: val,
            onChanged: (value) {},
            inactiveColor: Colors.grey,
            activeColor: Color(0xFF18d289),
          )
        ],
      ),
    );
  }
}
