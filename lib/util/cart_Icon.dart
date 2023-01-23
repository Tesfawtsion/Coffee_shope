import 'package:flutter/material.dart';

class CarRtt extends StatelessWidget {
  final VoidCallback onPressed;
  const CarRtt({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width * 0.12,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: RadialGradient(
                center: Alignment(-5, -5),
                colors: [
                  Colors.orange.shade100,
                  Colors.orange.shade400,
                  Colors.orange.shade500,
                  Colors.orange.shade600,
                  Colors.orange.shade700,
                  Colors.orange.shade800,
                ],
                radius: 7),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(-1, 8),
                  spreadRadius: 1,
                  blurRadius: 10)
            ]),
        child:
            IconButton(onPressed: onPressed, icon: const Icon(Icons.shopping_cart)));
  }
}
