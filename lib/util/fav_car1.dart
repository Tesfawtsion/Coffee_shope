import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavCard1 extends StatelessWidget {
  final String Img;
  final String txt;
  FavCard1({
    required this.Img,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
            color: Colors.black54,
            offset: Offset(5, 1),
            spreadRadius: 0,
            blurRadius: 2)
      ]),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.42,
        height: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(Img),
            fit: BoxFit.fitHeight,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, left: 3),
                  child: Text(
                    txt,
                    style: GoogleFonts.raleway(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 3.0,
                  ),
                  child: IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.orange.shade600,
                        size: MediaQuery.of(context).size.width * 0.04,
                      )),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'the best',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.035),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: MediaQuery.of(context).size.width * 0.03,
                          color: Colors.orange.shade500,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Text(
                          '2.5',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.shopping_cart,
                    size: MediaQuery.of(context).size.width * 0.07,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
