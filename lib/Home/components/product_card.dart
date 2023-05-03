import 'package:flutter/material.dart';

import '../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  });

  final String image, title;
  final int price;
  final VoidCallback press;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            defaultBorderRadius,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              child: Image.asset(
                image,
                height: 135,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Text(
                  '\$${price.toString()}',
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
