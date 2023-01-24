import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class CardMoving extends StatefulWidget {
  const CardMoving({super.key});

  @override
  State<CardMoving> createState() => _CardMovingState();
}

class _CardMovingState extends State<CardMoving> {
  @override
  Widget build(BuildContext context) {
    return CreditCard(
        cardNumber: "5450 7879 4864 7854",
        cardExpiry: "10/25",
        cardHolderName: "Card Holder",
        cvv: "456",
        bankName: "Axis Bank",
        cardType: CardType.masterCard,
        showBackSide: false,
        frontBackground: CardBackgrounds.black,
        backBackground: CardBackgrounds.white,
        showShadow: false,
        textExpDate: 'Exp. 2024',
        textName: 'Tesfawtsion shimelis',
        textExpiry: '11/2022');
  }
}
