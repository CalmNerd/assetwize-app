import 'package:assetwize_assignment/infrastructure/core/asset_dto.dart';

class VehicleDto extends AssetDto {
  final DateTime registrationDate;
  final String fuelType;
  final String vehicleModel;

  VehicleDto({
    required super.id,
    required super.name,
    required this.registrationDate,
    required this.fuelType,
    required this.vehicleModel,
  }) : super(type: AssetType.vehicle);
}
