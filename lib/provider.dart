import 'package:flutter/cupertino.dart';

class Faviye {
  String img, txt;
  Faviye({required this.img, required this.txt});
}

class Datakidus with ChangeNotifier {
  var data = [];
  var data2 = [];
  addData({img, txt}) {
    if (data.length > data2.length) {
      data2.add(Faviye(img: img, txt: txt));
    } else {
      data.add(Faviye(img: img, txt: txt));
    }
    notifyListeners();
  }
}
