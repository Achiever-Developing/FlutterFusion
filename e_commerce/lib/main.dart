import 'package:e_commerce/controller/cartController.dart';
import 'package:e_commerce/controller/totalController.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FavoriteController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeController(preferences: preferences),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterController(),
        ),
        ChangeNotifierProvider(
          create: (context) => cartController(),
        ),
        ChangeNotifierProvider(
          create: (context) => TotalController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
