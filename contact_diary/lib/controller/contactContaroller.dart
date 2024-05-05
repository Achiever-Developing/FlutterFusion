import 'package:login_page/headers.dart';

class ContactController extends ChangeNotifier {
  late SharedPreferences preferences;
  late Contact contact;

  List<Contact> allContact = <Contact>[];
  List<Contact> allHideContact = <Contact>[];

  ContactController({required this.preferences});

  void addContact({required Contact contact}) {
    if (ContactGlobal.form[0].currentState!.validate() &&
        ContactGlobal.form[1].currentState!.validate()) {
      allContact.add(contact);
    }
    notifyListeners();
  }

  void removeContact({required index}) {
    allContact.removeAt(index);
    notifyListeners();
  }

  void updateContact({required int index, required Contact contact}) {
    allContact[index] = contact;
    notifyListeners();
  }

  void hideAddContact({required Contact contact, required index}) {
    allContact.removeAt(index);
    allHideContact.add(contact);
    print('=====================================');
    print(allHideContact[0].name);
    notifyListeners();
  }

  void hideListContact({required index}) {
    allHideContact.removeAt(index);
    notifyListeners();
  }

  void hideRemoveContact({required index, required contact}) {
    allHideContact.removeAt(index);
    allContact.add(contact);
    notifyListeners();
  }

  void hideUpdateContact({required int index, required Contact contact}) {
    allHideContact[index] = contact;
    notifyListeners();
  }
}
