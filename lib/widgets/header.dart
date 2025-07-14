import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: "Search",
        fillColor: AppColors.cardBackgroundColor,
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        prefixIcon: Icon(Icons.search, color: Colors.grey, size: 21),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
