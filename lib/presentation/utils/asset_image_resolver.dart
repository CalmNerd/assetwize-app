import 'package:assetwize_assignment/domain/enums/asset_type.dart';

class AssetImageResolver {
  static String byType(AssetType type) {
    switch (type) {
      case AssetType.insurance:
        return 'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800';
      case AssetType.vehicle:
        return 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800';
      default:
        return 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800';
    }
  }
}
