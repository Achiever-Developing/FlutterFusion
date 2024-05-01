import 'package:e_commerce/headers.dart';
import 'package:e_commerce/utils/all_data.dart';

class cartController extends ChangeNotifier {
  List cart = List.generate(allData.length, (index) => false);

  void changeCart({required index, required context}) {
    if (cartProducts.contains(allData[index])) {
      cartProducts.remove(allData[index]);
      allData[index]['cart'] = false;
      cart[index] = allData[index]['cart'];
    } else {
      cartProducts.add(allData[index]);
      allData[index]['cart'] = true;
      cart[index] = allData[index]['cart'];
      Provider.of<CounterController>(context, listen: false)
          .constCounter(index: index);
    }
    notifyListeners();
  }
}
