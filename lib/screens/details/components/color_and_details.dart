import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Color'),
            Row(
              children: [
                ColorDot(
                  color: Color(0xFF356C95),
                  isSelected: true,
                ),
                ColorDot(
                  color: Color(0xFFF8C078),
                  isSelected: true,
                ),
                ColorDot(color: Color(0xFFA29B9B), isSelected: false),
              ],
            )
          ],
        ))
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({super.key, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
