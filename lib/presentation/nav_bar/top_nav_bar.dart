import 'package:flutter/material.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({super.key});

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  final List<IconData> icons = [
    Icons.web_asset,
    Icons.garage,
    Icons.wallet,
    Icons.home,
    Icons.phone,
    Icons.collections,
    Icons.star,
  ];
  final List<String> labels = [
    'My Insurances',
    'My garage',
    'My Jewellery',
    'My Realty',
    'My Electronics',
    'Collectibels',
    'Arts',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      height: 68,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 98),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icons[index], size: 32, color: Colors.green[900]),
                  const SizedBox(height: 4),
                  Text(
                    labels[index],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
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

// class TopNavBarr {
//   const TopNavBarr({required this.icon, required this.label, required this.onTap});
//   final IconData icon;
//   final String label;
//   final VoidCallback onTap;

//   Widget toWidget() {
//     return Container(
//       child: Column(
//         children: [Icon(icon), Text(label)],
//       ),
//     );
//   }
// }

// List<TopNavBarr> topNavBars = [
//   TopNavBarr(icon: Icons.home, label: 'Home', onTap: () {}),
//   TopNavBarr(icon: Icons.settings, label: 'Settings', onTap: () {}),
//   TopNavBarr(icon: Icons.person, label: 'Profile', onTap: () {}),
// ];
