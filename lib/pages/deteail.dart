import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:blur/blur.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/main.dart';
import 'package:todo/pages/card.dart';
import 'package:todo/provider.dart';
import 'package:todo/provider1.dart';
import 'package:todo/util/buy_Button.dart';
import 'package:todo/util/cart_Icon.dart';
import 'package:todo/util/milk_icon.dart';
import 'package:readmore/readmore.dart';

import '../util/cofee_icon.dart';
import '../util/text_button.dart';
import 'homepage.dart';

class Detail extends StatefulWidget {
  final String coffeeName, disc, imagePath, price;
  const Detail(
      {super.key,
      required this.coffeeName,
      required this.disc,
      required this.imagePath,
      required this.price});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Color _iconColor = Colors.grey;
  final List ButtonSelection = [
    [
      'Small',
      true,
    ],
    [
      'Medium',
      false,
    ],
    [
      'Larg',
      false,
    ],
  ];

  void buttonTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < ButtonSelection.length; i++) {
        ButtonSelection[i][1] = false;
      }
      ButtonSelection[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.imagePath,
                      ),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: IconButton(
                                    alignment: Alignment.center,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyApp()));
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.grey.shade500,
                                      size: MediaQuery.of(context).size.width *
                                          0.06,
                                    )),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: IconButton(
                                  onPressed: () {
                                    Provider.of<Datakidus>(context,
                                            listen: false)
                                        .addData(
                                            img: widget.imagePath,
                                            txt: widget.coffeeName);
                                    setState(() {
                                      _iconColor = Colors.orange.shade600;
                                    });
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.heart,
                                    color: _iconColor,
                                    size: MediaQuery.of(context).size.width *
                                        0.06,
                                  )))
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.71,
                    ),
                    Stack(
                      children: [
                        Blur(
                          borderRadius: BorderRadius.circular(15),
                          blur: 2.5,
                          blurColor: Colors.black12,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              width: MediaQuery.of(context).size.width * 1,
                              height: MediaQuery.of(context).size.width * 0.32,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.0,
                                  ),
                                  child: Text(
                                    widget.coffeeName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text('With ' + widget.disc,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16)),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.solidStar,
                                        size: 20,
                                        color: Colors.orange.shade500,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 25.0, top: 8),
                                        child: Text(
                                          '4.5',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                    ),
                                    MilkIcon(
                                      // Cname: widget.disc,
                                      Icone: 'lib/images/dropWater.png',
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    widget.disc,
                                    style: GoogleFonts.abel(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18.0, left: 8, right: 15, bottom: 8),
                                  child: TextButton(
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(1),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  side: BorderSide(
                                                      color: Colors
                                                          .grey.shade700))),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black45)),
                                      onPressed: (() {}),
                                      child: Text(
                                        'Medium rosted',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w300),
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimLines: 2,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.w400,
                    ),
                    colorClickableText: Colors.orange.shade600,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.032,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange.shade600),
                    lessStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.032,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange.shade600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Size',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: ButtonSelection.length,
                        itemBuilder: (context, index) {
                          return TextButton1(
                              Size: ButtonSelection[index][0],
                              isSelected: ButtonSelection[index][1],
                              onTap: (() {
                                buttonTypeSelected(index);
                              }));
                        }),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        flex: 0,
                        child: Column(
                          children: [
                            Text('price',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.044)),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.01),
                            Text('\$' + widget.price,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05,
                                ))
                          ],
                        ),
                      ),
                    ),
                    CarRtt(
                      onPressed: () {
                        Provider.of<DataCart>(context, listen: false).addData(
                            img1: widget.imagePath,
                            desc1: widget.disc,
                            name1: widget.coffeeName,
                            price1: widget.price);
                      },
                    ),
                    Expanded(flex: 0, child: Buy()),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.0001,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
