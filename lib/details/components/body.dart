import 'package:flutter/material.dart';
import 'package:shop_app_ui_kit/constants.dart';
import 'package:shop_app_ui_kit/models/peoducts.dart';

import 'color_dot.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          product.image,
          height: size.height * 0.4,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.fromLTRB(
              defaultPadding,
              defaultPadding * 2,
              defaultPadding,
              defaultPadding,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadius * 3),
                topRight: Radius.circular(defaultBorderRadius * 3),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        '\$${product.price}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                    ),
                  ),
                  const Text(
                    'Colors',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Row(
                    children: [
                      ColorDot(
                        color: const Color(0xFFBEE8EA),
                        isActive: false,
                        press: () {},
                      ),
                      ColorDot(
                        color: const Color(0xFF141B4A),
                        isActive: true,
                        press: () {},
                      ),
                      ColorDot(
                        color: const Color(0xFFF4E5C3),
                        isActive: false,
                        press: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding * 1.5,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: const StadiumBorder()),
                        child: const Text('Add to Cart'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
