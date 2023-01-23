import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Container1 extends StatelessWidget {
  final int delivery;
  final int taxes;
  final int total;
  Container1({
    required this.delivery,
    required this.taxes,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Charges',
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                  Text(
                    delivery.toString(),
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Taxes', style: GoogleFonts.lato(fontSize: 16)),
                  Text(
                    '\$' + taxes.toString(),
                    style: GoogleFonts.lato(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.orange.shade200,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style: GoogleFonts.bitter(fontSize: 16),
                  ),
                  Text('\$' + total.toString(),
                      style: GoogleFonts.bitter(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
