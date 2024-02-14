// creat a class of languages to mananage getx localization
// import 'package:get/get.dart';
//

import 'package:get/route_manager.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'email_hint': 'Enter your email',
          'no_internet': 'No internet connection',
          'retry': 'Retry',
          'general_exception': 'Something went wrong\nPlease try again',
        },
        'ur_PK': {
          'hello': 'مرحبا بالعالم',
          'email_hint': 'أدخل بريدك الإلكتروني',
        },
      };
}
