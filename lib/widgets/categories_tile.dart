import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesTile extends StatelessWidget {
  final Color color;
  final String title;
  final String assetImage;
  const CategoriesTile(
      {Key? key,
      required this.color,
      required this.title,
      required this.assetImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70.0,
          width: 70.0,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Image.asset(this.assetImage),
        ),
        SizedBox(height: 5.0),
        Text(
          this.title,
          style: GoogleFonts.varelaRound(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
