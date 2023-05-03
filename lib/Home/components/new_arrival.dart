import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/Product.dart';
import 'product_card.dart';
import 'section_header.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'New Arrival',
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

