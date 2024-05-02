import 'dart:io';

class Contact {
  String? name;
  String? contact;
  String? email;
  File? image;

  Contact(
      {required String this.name,
      required String this.contact,
      required String this.email,
      required File this.image});
}
