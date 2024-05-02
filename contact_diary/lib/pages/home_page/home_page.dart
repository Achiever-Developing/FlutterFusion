import 'package:image_picker/image_picker.dart';
import 'package:login_page/controller/contactContaroller.dart';
import 'package:login_page/headers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${Provider.of<UserNameController>(context).userNameModal.userName}'s Contact",
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.addContact);
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: Provider.of<ContactController>(context).allContact.length,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              radius: 30,
              foregroundImage: FileImage(
                Provider.of<ContactController>(context)
                    .allContact[index]
                    .image!,
              ),
            ),
            title: Text(
              Provider.of<ContactController>(context).allContact[index].name!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              Provider.of<ContactController>(context)
                  .allContact[index]
                  .contact!,
            ),
          ),
        ),
      ),
    );
  }
}
