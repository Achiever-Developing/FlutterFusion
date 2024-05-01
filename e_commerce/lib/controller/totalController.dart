import 'package:e_commerce/headers.dart';

class TotalController extends ChangeNotifier {
  List<double> subTotal = List.generate(
      cartProducts.length, (index) => cartProducts[index]['price'] as double);
  double total = 0;

  void subTotalF({required index}) {
    subTotal[index] = cartProducts[index]['qty'] * cartProducts[index]['price'];
    notifyListeners();
  }

  void Total() {
    subTotal.forEach(
      (element) {
        total += subTotal[subTotal.indexOf(element)];
      },
    );
    notifyListeners();
  }
}
