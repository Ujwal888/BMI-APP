import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: const TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
        )
      ],
    );
  }
}
