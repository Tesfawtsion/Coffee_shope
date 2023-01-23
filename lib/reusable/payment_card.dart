import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            color: Color(0xFF171624),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('lib/images/cbe.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CBE', style: GoogleFonts.bitter(fontSize: 16)),
                  Text('Comertial Banck',
                      style: GoogleFonts.bitter(fontSize: 16)),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              IconButton(
                  onPressed: (() => {}), icon: Icon(Icons.circle_outlined))
            ],
          ),
        ),
      ],
    );
  }
}
