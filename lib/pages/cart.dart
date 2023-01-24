import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/reusable/card.dart';
import 'package:todo/provider1.dart';
import 'package:provider/provider.dart';
import 'package:todo/reusable/payment_card.dart';

import '../reusable/cart_container.dart';
import '../reusable/container.dart';

import '../util/pay_now.dart';
import 'package:todo/reusable/card2.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cart',
                style: GoogleFonts.playfairDisplay(
                    fontSize: MediaQuery.of(context).size.width * 0.1),
              ),
              Icon(
                Icons.shopping_cart,
                color: Colors.orange.shade600,
                size: MediaQuery.of(context).size.width * 0.1,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ...Provider.of<DataCart>(context).data.map(
                      (t) => Slidable(
                        key: const ValueKey(0),
                        endActionPane: ActionPane(
                          dismissible: DismissiblePane(onDismissed: () {}),
                          motion: const ScrollMotion(),
                          children: const [
                            SlidableAction(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              flex: 8,
                              onPressed: doNothing,
                              backgroundColor: Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: Connnn(
                                name: t.name1,
                                desk: t.desc1,
                                img: t.img1,
                                prz: t.price1),
                          ),
                        ),
                      ),
                    ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          Container1(
            delivery: 10,
            taxes: 12,
            total: 123,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Pay(
            onPressed: () => {
              showModalBottomSheet(
                  elevation: 1,
                  backgroundColor: Colors.grey.shade900,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text('Payment',
                              style: GoogleFonts.bitter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Card Payment',
                                    style: GoogleFonts.lato(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.yellow.shade600)),
                              ),
                              IconButton(
                                  onPressed: (() => {}),
                                  icon: Icon(Icons.circle_outlined))
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.95,
                            height: MediaQuery.of(context).size.width * 0.6,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                CardMoving(),
                                CardMoving2(),
                                CardMoving(),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Bank Transfer',
                                    style: GoogleFonts.lato(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.yellow.shade600)),
                              ),
                              IconButton(
                                  onPressed: (() => {}),
                                  icon: Icon(
                                    Icons.add_box_rounded,
                                    size: MediaQuery.of(context).size.width *
                                        0.08,
                                    color: Colors.yellow.shade600,
                                  ))
                            ],
                          ),
                          PaymentCard(),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.orange.shade600),
                              child: Center(
                                  child: Text('Check out',
                                      style: GoogleFonts.lato(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ))),
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            },
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
