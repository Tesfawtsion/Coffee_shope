import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider.dart';
import '../util/fav_card.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 70),
            child: Text(
              'My Favorite',
              style: GoogleFonts.merriweather(
                  fontSize: 35, fontWeight: FontWeight.w300),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ...Provider.of<Datakidus>(context).data.map((d) => Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: FavCard(
                        Img: d.img,
                        txt: d.txt,
                      ),
                    ))
              ]),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Column(children: [
                  ...Provider.of<Datakidus>(context).data2.map((d) => Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: FavCard(
                          Img: d.img,
                          txt: d.txt,
                        ),
                      ))
                ]),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
