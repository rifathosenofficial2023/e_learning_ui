import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/views/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class NavBarViews extends StatefulWidget {
  const NavBarViews({super.key});

  @override
  State<NavBarViews> createState() => _NavBarViewsState();
}

class _NavBarViewsState extends State<NavBarViews> {

  int currentIndex = 0;
  List <Widget> screens = [
    const HomeScreen(),
   const Center(
      child: Text('My Learning'),
    ),
   const Center(
      child: Text('Wishlist'),
    ),
   const Center(
      child: Text('Settings'),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
        BottomNavigationBarItem(activeIcon: Icon(Icons.star), icon: Icon(Icons.star_border),
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