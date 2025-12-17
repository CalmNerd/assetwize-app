import 'package:assetwize_assignment/domain/enums/asset_type.dart';
import 'package:assetwize_assignment/infrastructure/core/asset_dto.dart';

class JewelleryDto extends AssetDto {
  String goldInGrams;
  String diamondInCarats;
  String? source;

  JewelleryDto({
    required super.id,
    required super.name,
    super.imageUrl,
    required this.goldInGrams,
    required this.diamondInCarats,
    this.source,
  }) : super(type: AssetType.jewellery);
}