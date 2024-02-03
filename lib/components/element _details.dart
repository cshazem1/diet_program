import 'package:flutter/cupertino.dart';

import 'custom_text.dart';

class ElementDetails extends StatelessWidget {
  const ElementDetails({
    super.key,
    required this.element,
    required this.grams,
  });

  final String element;
  final String? grams;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: element, fontSize: 15),
          CustomText(text: "${grams}g" ?? "0", fontSize: 15),
        ],
      ),
    );
  }
}
