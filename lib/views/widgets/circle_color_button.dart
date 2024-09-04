import 'package:flutter/material.dart';

class CircleColorButton extends StatelessWidget {
  const CircleColorButton({
    super.key,
    this.color = Colors.redAccent,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
