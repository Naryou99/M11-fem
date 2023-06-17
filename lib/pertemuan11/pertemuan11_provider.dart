import 'package:flutter/material.dart';
import 'dart:convert';

class Pertemuan11Provider extends ChangeNotifier {
  initialData() async {
    setData = hp;
  }

  final hp = {
    "data": [
      {
        "model": "Samsung Galaxy",
        "img":
            "https://ss7.vzw.com/is/image/VerizonWireless/samsung-galaxy-s22-ultra-green?wid=465&hei=465&fmt=webp",
        "developer": "Samsung Electronics",
        "price": '2500000',
        "rating": '4.5'
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "https://ae01.alicdn.com/kf/S6fbf8b241b9a4a98a37734052bdadd54E/Sony-Xperia-Z-Ultra-LTE-C6833-Refurbished-Asli-Dibuka-16GB-2GB-Quad-Core-8MP-6-4.jpg",
        "developer": "Sony Mobile",
        "price": '1500000',
        "rating": '4.1'
      },
      {
        "model": "Samsung Galaxy",
        "img":
            "https://ss7.vzw.com/is/image/VerizonWireless/samsung-galaxy-s22-ultra-green?wid=465&hei=465&fmt=webp",
        "developer": "Samsung Electronics",
        "price": '2500000',
        "rating": '4.5'
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "https://ae01.alicdn.com/kf/S6fbf8b241b9a4a98a37734052bdadd54E/Sony-Xperia-Z-Ultra-LTE-C6833-Refurbished-Asli-Dibuka-16GB-2GB-Quad-Core-8MP-6-4.jpg",
        "developer": "Sony Mobile",
        "price": '1500000',
        "rating": '4.1'
      },
    ]
  };

  final laptop = {
    "data": [
      {
        "model": "Lenovo Legion",
        "img":
            "https://static.lenovo.com/ww/campaigns/2022/legion-brand/lenovo-campaign-legion-brand-intel-feature-2-7-series-mobile.jpg",
        "developer": "Lenovo",
        "price": '12500000',
        "rating": '4'
      },
      {
        "model": "HP EliteBook",
        "img":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhRf0QdcXn8DiMhkhIjZ_JnwWjbPpbctL-fg&usqp=CAU",
        "developer": "HP",
        "price": '2500000',
        "rating": '4.8'
      },
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }

  ubahList(val) {
    if (val == 'hp') {
      setData = hp;
    } else {
      setData = laptop;
    }
  }
}
