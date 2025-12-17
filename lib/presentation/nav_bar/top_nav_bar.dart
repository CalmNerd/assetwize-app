// import 'package:flutter/material.dart';

// class TopNavBar extends StatelessWidget {
//   final List<IconData> icons;
//   final List<String> labels;
//   final List<VoidCallback> onTaps;
//   const TopNavBar({super.key, required this.icons, required this.labels, required this.onTaps});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
//       ),
//       height: 68,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: icons.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: onTaps[index],
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 13.0),
//               child: ConstrainedBox(
//                 constraints: const BoxConstraints(minWidth: 98),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(icons[index], size: 32, color: Colors.green[900]),
//                     const SizedBox(height: 4),
//                     Text(
//                       labels[index],
//                       style: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TopNavBar extends StatefulWidget {
  final List<IconData> icons;
  final List<String> labels;
  final List<VoidCallback> onTaps;
  final int initialIndex;
  const TopNavBar({
    super.key,
    required this.icons,
    required this.labels,
    required this.onTaps,
    this.initialIndex = 0,
  });

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.icons.length,
        itemBuilder: (context, index) {
          final bool isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: () => _handleItemTap(index),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: isSelected
                        ? Colors.green[900]!
                        : Colors.grey.shade300,
                  ),
                ),
              ),
              height: 68,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 98),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        widget.icons[index],
                        size: 32,
                        color: isSelected
                            ? Colors.green[900]
                            : Colors.grey.shade300,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.labels[index],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}