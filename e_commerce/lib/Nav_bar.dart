import 'package:e_commerce/headers.dart';

Widget navigationBar({required context}) {
  return BottomAppBar(
    elevation: 1,
    height: 60,
    color: Colors.white,
    shape: const CircularNotchedRectangle(),
    notchMargin: 10,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Myroutes.Homepage);
          },
          icon: Icon(Icons.home,
              size: 25,
              color: Global.global.currentIndex == 0
                  ? Colors.orange.shade800
                  : Colors.black),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Myroutes.Favoritepage);
          },
          icon: Icon(Icons.favorite,
              size: 30,
              color: Global.global.currentIndex == 1
                  ? Colors.orange.shade800
                  : Colors.black),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Myroutes.Cartpage);
          },
          icon: Icon(Icons.shopping_cart,
              size: 30,
              color: Global.global.currentIndex == 3
                  ? Colors.orange.shade800
                  : Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person,
              size: 30,
              color: Global.global.currentIndex == 1
                  ? Colors.orange.shade800
                  : Colors.black),
        ),
      ],
    ),
  );
}
