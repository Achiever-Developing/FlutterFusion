import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:login_page/pages/addContact/addContact.dart';

import '../pages/home_page/home_page.dart';
import '../pages/intro_page/intro_page.dart';
import '../pages/login_page_1/login_page_1.dart';
import '../pages/login_page_2/login_page_2.dart';

class Routes {
  static String loginpage = '/';
  static String loginpage2 = 'loginpage2';
  static String homepage = 'homepage';
  static String addContact = 'addcontact';
  static String introPage = 'intropage';

  static Map<String, WidgetBuilder> routes = {
    Routes.loginpage: (context) => LoginPage(),
    Routes.loginpage2: (context) => LoginPage2(),
    Routes.homepage: (context) => HomePage(),
    Routes.addContact: (context) => AddContact(),
    Routes.introPage: (context) => IntroPage(),
  };
}

class PersonalGlobal {
  static String? username;
  static String? userContact;
}

class ContactGlobal {
  static File? contactImage;

  static List<GlobalKey<FormState>> form =
      List.generate(4, (index) => GlobalKey());
}
