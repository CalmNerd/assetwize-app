import 'package:assetwize_assignment/infrastructure/entities/insurance_dto.dart';
import 'package:assetwize_assignment/infrastructure/entities/jewellery_dto.dart';
import 'package:assetwize_assignment/infrastructure/entities/vehicle_dto.dart';
import 'package:assetwize_assignment/presentation/common/add_new_asset_card.dart';
import 'package:assetwize_assignment/presentation/common/asset_card.dart';
import 'package:assetwize_assignment/presentation/common/positioned_button.dart';
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
          TopNavBar(
            icons: [
              Icons.web_asset,
              Icons.garage,
              Icons.wallet,
              Icons.home,
              Icons.phone,
              Icons.collections,
              Icons.star,
            ],
            labels: [
              'My Insurances',
              'My garage',
              'My Jewellery',
              'My Realty',
              'My Electronics',
              'Collectibels',
              'Arts',
            ],
            onTaps: [() {}, () {}, () {}, () {}, () {}, () {}, () {print('Arts');}],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        AddNewAssetCard(),
                        SizedBox(height: 16),
                        AssetCard(
                          asset: InsuranceDto(
                            id: '1',
                            imageUrl:
                                'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&h=600&fit=crop',
                            name: 'Insurance 1',
                            source: 'Source 1',
                            policyNumber: '1234567890',
                            endorsementEnd: DateTime.now(),
                          ),
                        ),
                        SizedBox(height: 16),
                        AssetCard(
                          asset: VehicleDto(
                            id: '1',
                            imageUrl:
                                'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800&h=600&fit=crop',
                            name: 'Vehicle 1',
                            registrationDate: DateTime.now(),
                            fuelType: 'Petrol',
                            vehicleModel: 'Toyota Corolla',
                          ),
                        ),
                        SizedBox(height: 16),
                        AssetCard(
                          asset: JewelleryDto(
                            id: '1',
                            imageUrl:
                                'https://a-z-animals.com/media/2023/09/shutterstock-1106851016-huge-licensed-1-scaled.jpg',
                            name: 'Bovine Nose Ring',
                            goldInGrams: '10',
                            diamondInCarats: '10',
                            source: 'Source 1',
                          ),
                        ),
                      ],
                    ),
                  ),
                  PositionedButton(
                    bottom: 0,
                    label: '+ New Asset',
                    onPressed: () {},
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textColor: Colors.black,
                    buttonColor: Colors.amber,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        icons: [Icons.home, Icons.favorite, Icons.search, Icons.settings],
        labels: ['Home', 'Favourite', 'Search', 'Settings'],
        onTaps: [() {}, () {}, () {}, () {print('Settings');}],
        initialIndex: 0,
      ),
    );
  }
}
