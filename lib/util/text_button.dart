import 'package:flutter/material.dart';

class TextButton1 extends StatefulWidget {
  final String Size;
  final bool isSelected;
  final VoidCallback onTap;
  TextButton1(
      {required this.Size, required this.isSelected, required this.onTap});

  @override
  State<TextButton1> createState() => _TextButton1State();
}

class _TextButton1State extends State<TextButton1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 48.0,
        right: 12,
      ),
      child: TextButton(
        onPressed: widget.onTap,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(8),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                        color: widget.isSelected
                            ? Colors.orange.shade600
                            : Colors.grey.shade700))),
            backgroundColor: MaterialStateProperty.all(Colors.black54)),
        child: Text(
          widget.Size,
          style: TextStyle(
              color: widget.isSelected
                  ? Colors.orange.shade600
                  : Colors.grey.shade400,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
