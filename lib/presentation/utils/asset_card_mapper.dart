import 'package:assetwize_assignment/infrastructure/core/asset_dto.dart';
import 'package:assetwize_assignment/infrastructure/entities/insurance_dto.dart';
import 'package:assetwize_assignment/infrastructure/entities/jewellery_dto.dart';
import 'package:assetwize_assignment/infrastructure/entities/vehicle_dto.dart';
import 'package:assetwize_assignment/presentation/models/asset_card_data.dart';
import 'package:assetwize_assignment/presentation/utils/asset_image_resolver.dart';
import 'package:assetwize_assignment/domain/enums/asset_type.dart';

class AssetCardMapper {
  static AssetCardData fromDto(AssetDto asset) {
    switch (asset.type) {
      case AssetType.insurance:
        final i = asset as InsuranceDto;
        return AssetCardData(
          title: i.name,
          rightTitle: i.source,
          line1Label: 'Policy #',
          line1Value: i.policyNumber,
          line2Label: 'Ends on:',
          line2Value: _fmt(i.endorsementEnd),
          imageUrl: i.imageUrl ?? AssetImageResolver.byType(asset.type),
        );

      case AssetType.vehicle:
        final v = asset as VehicleDto;
        return AssetCardData(
          title: v.name,
          rightTitle: v.fuelType,
          line1Label: 'Model',
          line1Value: v.vehicleModel,
          line2Label: 'Registered on:',
          line2Value: _fmt(v.registrationDate),
          imageUrl: v.imageUrl ?? AssetImageResolver.byType(asset.type),
        );
      case AssetType.jewellery:
        final j = asset as JewelleryDto;
        return AssetCardData(
          title: j.name,
          rightTitle: j.source ?? '',
          line1Label: 'Gold:',
          line1Value: '${j.goldInGrams} grams',
          line2Label: 'Diamond:',
          line2Value: '${j.diamondInCarats} carats',
          imageUrl: j.imageUrl ?? AssetImageResolver.byType(asset.type),
        );

      default:
        throw UnsupportedError('Unsupported asset type');
    }
  }

  static String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}
