import 'package:flutter/material.dart';

class MilkIcon extends StatelessWidget {
  // final String Cname;
  final String Icone;
  MilkIcon({
    // required this.Cname,
    required this.Icone,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.05,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Image.asset(
              Icone,
              color: Colors.orange.shade500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 32.0,
            right: 8,
            left: 10,
          ),
          // child: Text(
          //   Cname,
          //   style: TextStyle(
          //     fontSize: 10,
          //     fontWeight: FontWeight.w300,
          //     color: Colors.white70,
          //   ),
          // ),
        ),
      ],
    );
  }
}
