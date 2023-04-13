import 'package:bmi_app/userdetailsbloc/user_details_bloc.dart';
import 'package:bmi_app/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: BlocProvider(
          create: (context) => WeightBloc(), child: const InputPage()),
    );
  }
}
