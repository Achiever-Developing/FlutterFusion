import 'package:e_commerce/headers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  late bool isdark;
  late SharedPreferences preferences;

  ThemeController({required this.preferences}) {
    init();
  }

  init() {
    isdark = preferences.getBool('isdark') ?? false;
    print("$isdark");
  }

  void changeTheme() {
    isdark = !isdark;
    preferences.setBool('isdark', isdark);
    notifyListeners();
  }
}
