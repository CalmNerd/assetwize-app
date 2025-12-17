import 'package:assetwize_assignment/infrastructure/core/asset_dto.dart';
import 'package:assetwize_assignment/presentation/utils/asset_card_mapper.dart';
import 'package:flutter/material.dart';
import 'package:assetwize_assignment/presentation/common/positioned_button.dart';

class AssetCard extends StatelessWidget {
  final AssetDto asset;

  const AssetCard({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    final data = AssetCardMapper.fromDto(asset);

    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 208.13,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.network(
                  data.imageUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (_, __, ___) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      data.rightTitle ?? '',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      data.line1Label,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      data.line1Value,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      data.line2Label,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      data.line2Value,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        PositionedButton(
          top: 12,
          right: 12,
          label: 'Ask Assistant',
          icon: Icons.assistant,
          onPressed: () {},
          fontSize: 12,
          fontWeight: FontWeight.w500,
          buttonColor: Colors.white,
          textColor: Colors.grey[800],
        ),
      ],
    );
  }
}