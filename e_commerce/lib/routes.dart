import 'package:e_commerce/screens/cartpage/cartpage.dart';
import 'package:e_commerce/screens/favoritePage/favoritePage.dart';
import 'package:e_commerce/screens/homepage/homepage.dart';
import 'package:flutter/material.dart';

class Myroutes {
  static String Homepage = '/';
  static String Cartpage = 'cartPage';
  static String Favoritepage = 'favoritePage';
  static Map<String, WidgetBuilder> routes = {
    Homepage: (context) => const HomeScreen(),
    Cartpage: (context) => const CartPage(),
    Favoritepage: (context) => const FavoritePage(),
  };
}
