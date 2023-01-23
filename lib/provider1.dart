import 'package:flutter/cupertino.dart';

class Cart01 {
  String img1, desc1, name1, price1;
  Cart01(
      {required this.img1,
      required this.desc1,
      required this.name1,
      required this.price1});
}

class DataCart with ChangeNotifier {
  var data = [];
  addData({img1, desc1, name1, price1}) {
    data.add(Cart01(img1: img1, desc1: desc1, name1: name1, price1: price1));
    notifyListeners();
  }
}
