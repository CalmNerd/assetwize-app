import 'dart:io' show Platform;

String get appFontFamily {
  if (Platform.isIOS || Platform.isMacOS) {
    return 'SFProDisplay';
  }
  return 'Inter';
}