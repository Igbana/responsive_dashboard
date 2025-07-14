import 'package:flutter/material.dart';
import '../widgets/dashboard.dart';
import '../widgets/side_menu.dart';
import '../widgets/summary_board.dart';

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
            Expanded(flex: 3, child: SummaryBoard()),
          ],
        ),
      ),
    );
  }
}
