import 'package:flutter/material.dart';
import '../data/bar_graph_data.dart';
import '../models/bar_graph_model.dart';
import 'bar_graph_card.dart';

class BarDetails extends StatelessWidget {
  const BarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 12,
        children: [
          for (BarGraphModel data in BarGraphData.data)
            BarGraphCard(data: data),
        ],
      ),
    );
  }
}