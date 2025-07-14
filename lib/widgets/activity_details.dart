import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/health_details.dart';
import 'package:responsive_dashboard/models/health_model.dart';

import 'health_card.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 12,
        children: [
          for (HealthModel data in HealthDetails.healthData)
            HealthCard(healthData: data),
        ],
      ),
    );
  }
}
