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

enum AssetType { insurance, jewellery, vehicle, realty, electronics, collectibels, arts }

abstract class AssetDto {
  final String id;
  final String name;
  final AssetType type;

  AssetDto({
    required this.id,
    required this.name,
    required this.type,
  });
}