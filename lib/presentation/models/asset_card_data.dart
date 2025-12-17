class AssetCardData {
  final String title;
  final String? rightTitle;
  final String line1Label;
  final String line1Value;
  final String line2Label;
  final String line2Value;
  final String imageUrl;

  AssetCardData({
    required this.title,
    this.rightTitle,
    required this.line1Label,
    required this.line1Value,
    required this.line2Label,
    required this.line2Value,
    required this.imageUrl,
  });
}