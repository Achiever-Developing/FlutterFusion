import 'package:e_commerce/headers.dart';

class CounterController extends ChangeNotifier {
  List Counter = List.generate(allData.length, (index) => 1);

  void increaseCounter({required index}) {
    allData[index]['qty']++;
    Counter[index] = allData[index]['qty'];
    notifyListeners();
  }

  void decreaseCounter({required index}) {
    if (allData[index]['qty'] > 1) {
      allData[index]['qty']--;
      Counter[index] = allData[index]['qty'];
    }
    notifyListeners();
  }

  void constCounter({required index}) {
    allData[index]['qty'] = 1;
    Counter[index] = allData[index]['qty'];
  }
}
