import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello',
          'welcome': 'Welcome to DineTime',
          'login': 'Login',
          'enter_phone': 'Enter your phone number',
        },
        'ml': {
          'hello': 'ഹലോ',
          'welcome': 'ഡൈൻടൈമിലേക്ക് സ്വാഗതം',
          'login': 'ലോഗിൻ',
          'enter_phone': 'നിങ്ങളുടെ ഫോൺ നമ്പർ നൽകുക',
        },
      };
}
