import 'package:flutter/material.dart';

class AddNewAssetCard extends StatefulWidget {
  const AddNewAssetCard({super.key});

  @override
  State<AddNewAssetCard> createState() => _AddNewAssetCardState();
}

class _AddNewAssetCardState extends State<AddNewAssetCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('New Asset', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
                SizedBox(height: 4),
                Text('Ask AI to help you better understand your insurance.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey)),
              ],),
            ),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios, size: 24, color: Colors.green[900]),
          ],
        ),  
      ),
    );
  }
}