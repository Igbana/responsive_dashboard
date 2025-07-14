import 'package:flutter/material.dart';
import 'activity_details_card.dart';
import 'header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        const Header(),
        const SizedBox(height: 18),
        const ActivityDetailsCard(),
      ],
    );
  }
}
