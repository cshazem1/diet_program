import 'package:flutter/cupertino.dart';

image(String name) {
  if (name == 'meat' || name == 'لحمه') {
    return const AssetImage("images/meat.png");
  } else if (name == 'banana' || name == 'موز') {
    return const AssetImage("images/banana.png");
  } else if (name == 'milk' || name == 'لبن') {
    return const AssetImage("images/milk.jpeg");
  } else if (name == 'rice' || name == 'رز') {
    return const AssetImage("images/rice.png");
  } else {
    return const AssetImage("images/empty.jpeg");
  }
}
