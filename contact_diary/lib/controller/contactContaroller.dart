import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:login_page/headers.dart';

import '../models/contact.dart';

class ContactController extends ChangeNotifier {
  late SharedPreferences preferences;
  late Contact contact;

  final String _sfName = "Name";
  final String _sfContact = "Contact";
  final String _sfEmail = "Email";
  final String _sfImage = "Image";

  List<String> _allName = [];
  List<String> _allContact = [];
  List<String> _allEmail = [];
  List<String> _allImage = [];

  List<Contact> allContact = <Contact>[];

  ContactController({required this.preferences});

  void addContact({required Contact contact}) {
    allContact.add(contact);
    preferences.setStringList('allContact', contact as List<String>);
    notifyListeners();
  }

  void addItem({
    required String name,
    required String contact2,
    required String email,
  }) {
    contact = Contact(
        name: name,
        contact: contact,
        email: email,
        image: ContactGlobal.contactImage!);

    allContact.add(
      Contact(
          name: name,
          contact: contact2,
          email: email,
          image: ContactGlobal.contactImage!),
    );

    // preferences.setStringList('allContact', allContact);

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
