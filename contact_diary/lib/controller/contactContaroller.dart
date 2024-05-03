import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:login_page/headers.dart';

import '../models/contact.dart';

class ContactController extends ChangeNotifier {
  late SharedPreferences preferences;
  late Contact contact;

  List<Contact> allContact = <Contact>[];

  ContactController({required this.preferences});

  void addContact({required Contact contact}) {
    if (ContactGlobal.form[0].currentState!.validate() &&
        ContactGlobal.form[1].currentState!.validate()) {
      allContact.add(contact);
    }
    notifyListeners();
  }

  void removeContact({required Contact contact}) {
    allContact.add(contact);
    notifyListeners();
  }

  void updateContact({required int index, required Contact contact}) {
    allContact[index] = contact;
    notifyListeners();
  }
}
