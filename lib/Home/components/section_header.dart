import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.pressSeeAll,
  });

  final String title;
  final Function pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
        TextButton(
          onPressed: () {
            pressSeeAll();
          },
          child: const Text(
            'See All',
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
        ),
      ],
    );
  }
}
