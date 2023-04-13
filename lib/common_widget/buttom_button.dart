import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.buttonTittle, required this.onTap});
  final VoidCallback onTap;
  final String buttonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomCoinainerColor,
        padding: const EdgeInsets.only(bottom: 10.0),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            buttonTittle,
            style: largeTextStyle,
          ),
        ),
      ),
    );
  }
}
