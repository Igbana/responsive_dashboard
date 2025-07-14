import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';
import 'package:responsive_dashboard/utils/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
        itemCount: SideMenuData.menu.length,
        itemBuilder: (context, index) {
          final bool isSelected = selectedIndex == index;
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: isSelected ? AppColors.selectionColor : Colors.transparent,
            ),
            child: InkWell(
              onTap: () => setState(() {
                selectedIndex = index;
              }),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13.0,
                      vertical: 7,
                    ),
                    child: Icon(
                      SideMenuData.menu[index].icon,
                      color: isSelected ? Colors.black : Colors.grey,
                    ),
                  ),
                  Text(
                    SideMenuData.menu[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? Colors.black : Colors.grey,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
