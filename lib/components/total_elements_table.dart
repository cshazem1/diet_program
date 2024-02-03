// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_text.dart';
class TotalElementsTable extends StatelessWidget {
  TotalElementsTable({
    super.key,
    required this.total,
  });

  // ignore: prefer_typing_uninitialized_variables
  var total;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1),

            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
          BoxShadow(
            color: kBackgroundColor.withOpacity(1),

            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Table(
        border: TableBorder.all(
            color: Colors.black.withOpacity(.6), width: 3),
        children: [
          TableRow(children: [
            Column(
              children: [
                Center(
                    child: CustomText(
                      text: total?.totalProtein??"",
                      fontSize: 18,
                      color: Colors.orange,
                    )),
                Center(
                    child:
                    CustomText(text: "البروتينات", fontSize: 18)),
              ],
            ),
            Column(
              children: [
                Center(
                    child: CustomText(
                      text: total?.totalCalories??" ",
                      fontSize: 18,
                      color: Colors.orange,
                    )),
                Center(child: CustomText(text: "سعرات", fontSize: 18)),
              ],
            ),
            Column(
              children: [
                Center(
                    child: CustomText(
                      text: total?.totalCarb??"",
                      fontSize: 18,
                      color: Colors.orange,
                    )),
                Center(child: CustomText(text: "الكارب", fontSize: 18)),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
