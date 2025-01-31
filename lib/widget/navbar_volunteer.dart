import 'package:flutter/material.dart';

class VolunteerNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const VolunteerNavBar({Key? key, required this.currentIndex, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Events'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
