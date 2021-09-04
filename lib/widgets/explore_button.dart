import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreAllButton extends StatelessWidget {
  final Function onTap;
  final String title;
  const ExploreAllButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: Color(0xffE0E6EE),
        ),
        child: Text(
          this.title,
          style: GoogleFonts.varelaRound(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
