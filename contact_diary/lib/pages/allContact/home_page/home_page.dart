import 'package:login_page/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${Provider.of<UserNameController>(context).userNameModal.userName}'s Contact",
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Provider.of<StepperController>(context, listen: false).reload();
              Navigator.pushNamed(context, Routes.addContact);
            },
            onLongPress: () {
              Navigator.pushNamed(context, Routes.hideContact);
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: Provider.of<ContactController>(context).allContact.length,
          itemBuilder: (context, index) => Card(
            child: ExpansionTile(
              trailing: Container(
                width: 2,
              ),
              title: Text(
                Provider.of<ContactController>(context).allContact[index].name!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: leadingImage(
                  index: index, context: context, radius: 20, size: 14),
              children: [
                Text(
                  "+91 ${Provider.of<ContactController>(context).allContact[index].contact!}",
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // call
                    IconButton(
                      onPressed: () async {
                        Uri call = Uri(
                          scheme: 'tel',
                          path: Provider.of<ContactController>(context,
                                  listen: false)
                              .allContact[index]
                              .contact,
                        );
                        await launchUrl(call);
                      },
                      icon: const Icon(
                        Icons.call,
                        color: Colors.green,
                      ),
                    ),
                    //sms
                    IconButton(
                      onPressed: () async {
                        Uri sms = Uri(
                          scheme: 'sms',
                          path: Provider.of<ContactController>(context,
                                  listen: false)
                              .allContact[index]
                              .contact,
                        );
                        await launchUrl(sms);
                      },
                      icon: const Icon(
                        Icons.sms,
                        color: Colors.red,
                      ),
                    ),
                    //email
                    IconButton(
                      onPressed: () async {
                        Uri email = Uri(
                          scheme: 'mailto',
                          path: Provider.of<ContactController>(context,
                                  listen: false)
                              .allContact[index]
                              .email,
                        );
                        await launchUrl(email);
                      },
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.blue,
                      ),
                    ),
                    //info
                    IconButton(
                      onPressed: () async {
                        LocalAuthentication authentication =
                            LocalAuthentication();

                        bool opened = await authentication.authenticate(
                            localizedReason: "Open Intro");
                        if (opened)
                          Navigator.of(context)
                              .pushNamed(Routes.introPage, arguments: index);
                      },
                      icon: const Icon(
                        Icons.info,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}