import 'package:flutter/material.dart';
import 'graph_model.dart';

class BarGraphModel {
  const BarGraphModel({
    required this.label,
    required this.graph,
    required this.color,
  });

  final String label;
  final Color color;
  final List<GraphModel> graph;
}
