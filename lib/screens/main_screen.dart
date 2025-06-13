import 'package:application/constants.dart';
import 'package:application/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [HomeScreen(), Scaffold(), Scaffold(), Scaffold()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavItem(
              title: 'Home',
              isActive: currentIndex == 0,
              icon: Iconsax.home,
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            BottomNavItem(
              title: 'Calender',
              isActive: currentIndex == 1,
              icon: Iconsax.calendar_1,
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            BottomNavItem(
              title: 'Standing',
              isActive: currentIndex == 2,
              icon: Iconsax.chart,
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            BottomNavItem(
              title: 'Account',
              isActive: currentIndex == 3,
              icon: Iconsax.profile_circle,
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final bool isActive;
  final IconData icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? kPrimaryColor : kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Icon(icon, color: isActive ? Colors.white : Colors.grey.shade400),
            isActive
                ? Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
