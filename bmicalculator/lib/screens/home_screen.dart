import 'package:bmicalculator/screens/widgets/gender_field.dart';
import 'package:bmicalculator/screens/widgets/height_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: GoogleFonts.lato(),
        ),
        backgroundColor: Color(0xFF444444),
        centerTitle: true,
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: width * 0.07,
                      right: width * 0.07,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(child: GenderField(gender: 'male')),
                            SizedBox(width: width * 0.025),
                            const Expanded(
                                child: GenderField(gender: 'female')),
                          ],
                        ),
                        SizedBox(height: height * 0.025),
                        HeightField(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
