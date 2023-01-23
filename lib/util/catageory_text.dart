import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String CoffeType;
  final bool isSelected;
  final VoidCallback onTap;
  TextWidget(
      {required this.CoffeType, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 8),
        child: Text(
          CoffeType,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color:
                  isSelected ? Colors.orange.shade600 : Colors.grey.shade500),
        ),
      ),
    );
  }
}
