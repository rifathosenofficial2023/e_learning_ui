import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarViews extends StatefulWidget {
  const NavBarViews({super.key});

  @override
  State<NavBarViews> createState() => _NavBarViewsState();
}

class _NavBarViewsState extends State<NavBarViews> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.star_border),
         label: 'Featured'),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline),
         label: 'Learning'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border),
         label: 'Wishlist'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
         label: 'Setting'),

      ]),
    );
  }
}