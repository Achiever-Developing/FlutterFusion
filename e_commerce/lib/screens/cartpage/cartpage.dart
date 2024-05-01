import 'package:e_commerce/controller/totalController.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce/headers.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Provider.of<ThemeController>(context, listen: false).changeTheme();
          },
          icon: Provider.of<ThemeController>(context, listen: false).isdark
              ? const Icon(Icons.sunny)
              : const Icon(CupertinoIcons.moon_fill),
        ),
        title: Text(
          'Your Pending Order',
          style: Provider.of<ThemeController>(context).isdark
              ? Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white)
              : Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CartProducts(context: context),
            const Spacer(),
            // Container(
            //   height: 200,
            //   padding: const EdgeInsets.all(10),
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: Colors.grey,
            //         offset: Offset(2, 2),
            //         blurRadius: 3,
            //       )
            //     ],
            //   ),
            //   child: Column(
            //     children: [
            //       ...List.generate(
            //         cartProducts.length,
            //         (index) => Row(
            //           children: [
            //             Text(
            //               cartProducts[index]['name'],
            //               style: Theme.of(context).textTheme.bodyLarge,
            //             ),
            //             const Spacer(),
            //             Text(
            //               Provider.of<TotalController>(context, listen: false)
            //                   .subTotal[index]
            //                   .toString(),
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(context: context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Global.global.currentIndex == 2;
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.orange.shade800,
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
