import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({required this.onTabChange, super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets. symmetric(vertical:20),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        tabs: [
        GButton(icon: Icons.home, text: 'Shop', ),
        GButton(icon: Icons.shopping_bag_outlined, text: 'Cart', ),
        
      ]),
    );
  }
}