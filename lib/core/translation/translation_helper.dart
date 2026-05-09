import 'package:get/get.dart';
import 'arabic.dart';
import 'english.dart';
import 'french.dart';

class TranslationHelper extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,
    // {
    //   'login': 'Login',
    //   'register': 'Register',
    //   'username': 'Username',
    //   'password': 'Password',
    //   'settings': 'Settings',
    // },
    'ar': ar,
    // {
    //   'login': 'تسجيل الدخول',
    //   'register': 'انشاء حساب',
    //   'username': 'اسم المستخدم',
    //   'password': 'كلمة المرور',
    //   'settings': 'الاعدادات',
    // },
    'fr': fr,
    // {
    //   'login': 'Connexion',
    //   'register': 'Inscription',
    //   'username': 'Nom d\'utilisateur',
    //   'password': 'Mot de passe',
    //   'settings': 'Paramètres',
    // }
  };

}