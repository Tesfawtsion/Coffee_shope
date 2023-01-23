import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class CardMoving2 extends StatefulWidget {
  const CardMoving2({super.key});

  @override
  State<CardMoving2> createState() => _CardMoving2State();
}

class _CardMoving2State extends State<CardMoving2> {
  @override
  Widget build(BuildContext context) {
    return CreditCard(
        cardNumber: "5450 7879 4864 7854",
        cardExpiry: "10/25",
        cardHolderName: "Card Holder",
        cvv: "456",
        bankName: "Axis Bank",
        cardType: CardType.americanExpress,
        showBackSide: false,
        frontBackground: CardBackgrounds.blue,
        backBackground: CardBackgrounds.white,
        showShadow: false,
        textExpDate: 'Exp. 2024',
        textName: 'Tesfawtsion shimelis',
        textExpiry: '11/2022');
  }
}
