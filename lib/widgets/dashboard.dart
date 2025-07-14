import 'package:flutter/material.dart';
import 'activity_details.dart';
import 'header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18,
      children: [
        const SizedBox(height: 18),
        const Header(),
        const ActivityDetailsCard(),
        
      ],
    );
  }
}
