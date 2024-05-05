import 'package:login_page/headers.dart';

class HideContact extends StatelessWidget {
  const HideContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hide Contact",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount:
              Provider.of<ContactController>(context).allHideContact.length,
          itemBuilder: (context, index) => Card(
            child: ExpansionTile(
              trailing: Container(
                width: 2,
              ),
              title: Text(
                Provider.of<ContactController>(context)
                    .allHideContact[index]
                    .name!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: hideleadingImage(
                  index: index, context: context, radius: 20, size: 14),
              children: [
                Text(
                  "+91 ${Provider.of<ContactController>(context).allHideContact[index].contact!}",
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
                              .allHideContact[index]
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
                              .allHideContact[index]
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
                              .allHideContact[index]
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
                        if (opened) {
                          Navigator.of(context).pushNamed(Routes.hideIntroPage,
                              arguments: index);
                        }
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
