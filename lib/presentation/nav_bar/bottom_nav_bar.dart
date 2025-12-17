import 'package:flutter/material.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   final List<IconData> icons = [
//     Icons.home,
//     Icons.favorite,
//     Icons.search,
//     Icons.settings,
//   ];
//   final List<String> labels = ['Home', 'Favourites', 'Search', 'Settings'];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       alignment: Alignment.center,
//       width: double.infinity,
//       height: 68,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: List.generate(
//           icons.length,
//           (index) => _buildNavItem(icons[index], labels[index]),
//         ),
//       ),
//     );
//   }
// }

class BottomNavBar extends StatefulWidget {
  final List<IconData> icons;
  final List<String> labels;
  final List<VoidCallback> onTaps;
  final int initialIndex;

  const BottomNavBar({
    super.key,
    required this.icons,
    required this.labels,
    required this.onTaps,
    this.initialIndex = 0,
  }) : assert(
         icons.length == labels.length && icons.length == onTaps.length,
         'Icons, labels, and onTaps must have the same length',
       );

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _handleItemTap(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    widget.onTaps[index]();
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _handleItemTap(index),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 82),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: isSelected ? Colors.green[900] : Colors.grey,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? Colors.green[900] : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
          widget.icons.length,
          (index) =>
              _buildNavItem(widget.icons[index], widget.labels[index], index),
        ),
      ),
    );
  }
}
