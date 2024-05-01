import 'package:e_commerce/headers.dart';

class FavoriteController extends ChangeNotifier {
  List favorite = List.generate(allData.length, (index) => false);

  void changeFavorite({required index}) {
    if (favoriteProducts.contains(allData[index])) {
      favoriteProducts.remove(allData[index]);
      allData[index]['favorite'] = false;
      favorite[index] = allData[index]['favorite'];
    } else {
      favoriteProducts.add(allData[index]);
      allData[index]['favorite'] = true;
      favorite[index] = allData[index]['favorite'];
    }
    notifyListeners();
  }
}
