import 'package:assetwize_assignment/presentation/common/add_new_asset_card.dart';
import 'package:assetwize_assignment/presentation/insurance/insurance_list.dart';
import 'package:assetwize_assignment/presentation/nav_bar/bottom_nav_bar.dart';
import 'package:assetwize_assignment/presentation/nav_bar/top_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopNavBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Column(
                children: [
                  AddNewAssetCard(),
                  SizedBox(height: 16),
                  InsuranceList(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
