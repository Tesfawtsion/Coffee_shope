import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:blur/blur.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/main.dart';
import 'package:todo/reusable/card.dart';
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 800.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          widget.imagePath,
                        ),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0).r,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(10)),
                                width: 80.w,
                                height: MediaQuery.of(context).size.width * 0.1,
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
                                      size: 45.r,
                                    ))),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(10)),
                                width: 80.w,
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
                                      Icons.favorite,
                                      color: _iconColor,
                                      size: 45.r,
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 600.h,
                      ),
                      Stack(
                        children: [
                          Blur(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30).r,
                                topRight: Radius.circular(30).r),
                            blur: 2.5,
                            blurColor: Colors.black12,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  width: double.infinity,
                                  height: 200.w),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 18.0,
                                    ).r,
                                    child: Text(
                                      widget.coffeeName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35.sp),
                                    ),
                                  ),
                                  Text('With ' + widget.disc,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 30.sp)),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0).r,
                                    child: Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.solidStar,
                                          size: 30.r,
                                          color: Colors.orange.shade500,
                                        ),
                                        SizedBox(width: 20.w),
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
                                width: 100.w,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
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
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                            horizontal: 18.0, vertical: 10)
                                        .r,
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
                  SizedBox(
                    height: 20.h,
                  ),
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
                    padding: const EdgeInsets.all(18.0).r,
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
                    height: 150.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 12.w),
                      Padding(
                        padding: const EdgeInsets.all(8.0).r,
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
                                        MediaQuery.of(context).size.width *
                                            0.05,
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
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
