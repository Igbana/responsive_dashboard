import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dashboard.dart';
import 'package:responsive_dashboard/widgets/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 2, child: SideMenu()),
            Expanded(flex: 7, child: Dashboard()),
            Expanded(flex: 3, child: Container(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
