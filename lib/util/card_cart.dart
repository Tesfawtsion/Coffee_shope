import 'package:flutter/material.dart';

import 'cartContainer.dart';
import 'custom_qty_button.dart';

class CardCart extends StatefulWidget {
  const CardCart({super.key});

  @override
  State<CardCart> createState() => _CardCartState();
}

class _CardCartState extends State<CardCart> {
  int _qty = 1;

  void _add() {
    setState(() {
      _qty += 1;
    });
  }

  void _remove() {
    setState(() {
      if (_qty > 1) _qty -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black87),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ContCard(
            desc: 'Dizzled with milk',
            imgpaz: 'lib/images/Coffe3.jpg',
            price: '32.12',
            title: 'Cappucino',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _quantity(
                add: _add,
                remove: _remove,
                qty: _qty,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _quantity(
    {required Function add, required Function remove, required int qty}) {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          CustomButton(
              iconData: Icons.add,
              onTap: (() {
                add();
              })),
          _boxqnt(qty),
          CustomButton(
              iconData: Icons.remove,
              onTap: (() {
                remove();
              }))
        ],
      ),
    ],
  );
}

Widget _boxqnt(int qty) {
  return Container(
    height: 25,
    width: 25,
    alignment: Alignment.center,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(
        color: Colors.orange.shade600,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Text(
      qty.toString(),
      style: const TextStyle(
          fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
