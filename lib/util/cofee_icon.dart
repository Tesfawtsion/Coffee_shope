import 'package:flutter/material.dart';

class CoffeIcon extends StatelessWidget {
  final String Cname;
  final String Icone;
  CoffeIcon({
    required this.Cname,
    required this.Icone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
            Icone,
          ),
          fit: BoxFit.fitHeight,
          alignment: Alignment.topCenter,
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.width * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            Cname,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white70,
              fontSize: MediaQuery.of(context).size.width * 0.022,
            ),
          ),
        ],
      ),
    );
  }
}
