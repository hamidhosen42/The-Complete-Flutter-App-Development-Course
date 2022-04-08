import 'package:get/get.dart';
import 'package:localization_with_getx/languages/bangla.dart';
import 'package:localization_with_getx/languages/english.dart';

class Languages extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    'en_US':eng,
    'bn_BD':ban,
  };
}