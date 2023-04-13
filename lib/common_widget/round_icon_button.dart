import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: const CircleBorder(),
      constraints: const BoxConstraints(minWidth: 45.0, minHeight: 45.0),
      fillColor: const Color(0xFF4C4F4E),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
