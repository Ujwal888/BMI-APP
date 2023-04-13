import 'package:flutter/material.dart';

class OurCard extends StatelessWidget {
  const OurCard(
      {super.key,
      required this.color,
      this.cardChild,
      this.text,
      this.onPressed});
  final Color color;
  final Widget? cardChild;
  final Text? text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
