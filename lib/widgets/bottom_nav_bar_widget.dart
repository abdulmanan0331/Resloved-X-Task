import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30), // Rounded edges
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        currentIndex: 0,
        elevation: 0,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff151515),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/home.png', height: 24, width: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/search.png',
              height: 24,
              width: 24,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/message.png',
              height: 24,
              width: 24,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              height: 24,
              width: 24,
            ),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
