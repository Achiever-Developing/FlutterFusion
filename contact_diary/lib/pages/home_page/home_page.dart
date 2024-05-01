import 'package:flutter/material.dart';
import 'package:login_page/controler/usernameController.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            Provider.of<UserNameController>(context).userNameModal.userName),
      ),
    );
  }
}
