import 'en_MX/en_mx_translations.dart';
import 'en_US/en_us_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_US': enUs,
    'es_mx': esMx
  };
}
