import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopProductTile extends StatelessWidget {
  final Color color;
  final String title;
  final String assetImage;
  final String price;

  const TopProductTile(
      {Key? key,
      required this.color,
      required this.title,
      required this.assetImage,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  this.assetImage,
                  width: 80,
                  height: 80,
                ),
                Text(
                  this.title,
                  style: GoogleFonts.varelaRound(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  this.price,
                  style: GoogleFonts.varelaRound(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(10))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Icon(Icons.add),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(10))),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Icon(
                Icons.favorite_border,
              ),
            ),
          )
        ],
      ),
      width: 150.0,
      height: 200.0,
    );
  }
}
