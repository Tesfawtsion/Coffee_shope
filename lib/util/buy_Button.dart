import 'package:flutter/material.dart';

class Buy extends StatelessWidget {
  const Buy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width * 0.121,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: RadialGradient(
                center: Alignment(-5, -5),
                colors: [
                  Colors.yellow.shade100,
                  Colors.orange.shade400,
                  Colors.orange.shade500,
                  Colors.orange.shade500,
                  Colors.orange.shade600,
                  Colors.orange.shade600,
                ],
                radius: 7),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(-1, 8),
                  spreadRadius: 1,
                  blurRadius: 10)
            ]),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Buy Now',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.046,
                color: Colors.white),
          ),
        ));
  }
}
