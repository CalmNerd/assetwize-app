import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<IconData> icons = [
    Icons.home,
    Icons.favorite,
    Icons.search,
    Icons.settings,
  ];
  final List<String> labels = ['Home', 'Favourites', 'Search', 'Settings'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      width: double.infinity,
      height: 68,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          icons.length,
          (index) => _buildNavItem(icons[index], labels[index]),
        ),
      ),
    );
  }
}

Widget _buildNavItem(IconData icon, String label) {
  return ConstrainedBox(
    constraints: const BoxConstraints(minWidth: 82),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 32, color: Colors.green[900]),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
