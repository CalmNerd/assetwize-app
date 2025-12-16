import 'package:assetwize_assignment/infrastructure/core/asset_dto.dart';

class InsuranceDto extends AssetDto {
  final String source;
  final String policyNumber;
  final DateTime endorsementEnd;

  InsuranceDto({
    required super.id,
    required super.name,
    required this.source,
    required this.policyNumber,
    required this.endorsementEnd,
  }) : super(type: AssetType.insurance);
}