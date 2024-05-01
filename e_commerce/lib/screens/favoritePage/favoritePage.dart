import 'package:flutter/cupertino.dart';
import 'package:e_commerce/headers.dart';

import 'componets/favoriteProducts.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

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
          'Favorite Products',
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
        child: FavoriteProducts(context: context),
      ),
      bottomNavigationBar: navigationBar(context: context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Global.global.currentIndex == 2;
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.orange.shade800,
        child: const Icon(
          Icons.favorite,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
