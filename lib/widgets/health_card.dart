import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/colors.dart';

import '../models/health_model.dart';

class HealthCard extends StatelessWidget {
  const HealthCard({super.key, required this.healthData});
  final HealthModel healthData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.cardBackgroundColor,
          ),
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(healthData.icon, width: 30, height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4.0),
                child: Text(healthData.value),
              ),
              Text(
                healthData.title,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
