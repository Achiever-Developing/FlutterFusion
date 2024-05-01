import 'package:e_commerce/headers.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Provider.of<ThemeController>(context, listen: false).changeTheme();
          },
          icon: Provider.of<ThemeController>(context).isdark
              ? const Icon(Icons.sunny)
              : const Icon(CupertinoIcons.moon_fill),
        ),
      ),
      body: Column(
        children: [
          AllProducts(
            context: context,
          )
        ],
      ),
      bottomNavigationBar: navigationBar(context: context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Global.global.currentIndex == 2;
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.orange.shade800,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
