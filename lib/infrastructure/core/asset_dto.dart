// class AssetDto {
//   final String id;
//   final String name;
//   final String description;
//   final String imageUrl;
//   final String createdAt;
//   final String updatedAt;

//   AssetDto({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.imageUrl,
//     required this.createdAt,
//     required this.updatedAt,
//   });
// }

import 'package:assetwize_assignment/domain/enums/asset_type.dart';

abstract class AssetDto {
  final String id;
  final String name;
  final AssetType type;
  final String? imageUrl;

  AssetDto({
    required this.id,
    required this.name,
    required this.type,
    this.imageUrl,
  });
}