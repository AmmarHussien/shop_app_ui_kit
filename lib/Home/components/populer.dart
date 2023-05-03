import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/peoducts.dart';
import 'product_card.dart';
import 'section_header.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'Popular',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demoProduct[index].image,
                  title: demoProduct[index].title,
                  price: demoProduct[index].price,
                  press: () {},
                  bgColor: demoProduct[index].bgColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
