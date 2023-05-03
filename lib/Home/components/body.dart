import 'package:flutter/material.dart';

import 'package:shop_app_ui_kit/constants.dart';

import 'categories.dart';
import 'new_arrival.dart';
import 'populer.dart';
import 'search_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            ),
            const Text(
              'best outfit for you',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const SizedBox(
              height: defaultPadding,
            ),
            const NewArrival(),
            const SizedBox(
              height: defaultPadding,
            ),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
