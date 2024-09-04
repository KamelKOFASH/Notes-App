import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search_circle_fill,
              size: 32,
            )),
      ],
    );
  }
}
