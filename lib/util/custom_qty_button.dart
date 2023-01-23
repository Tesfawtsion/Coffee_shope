import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  CustomButton({required this.iconData, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.07,
        width: MediaQuery.of(context).size.width * 0.07,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.orange.shade600,
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Icon(
          iconData,
          size: MediaQuery.of(context).size.width * 0.05,
          color: Colors.black87,
        ),
      ),
    );
  }
}
