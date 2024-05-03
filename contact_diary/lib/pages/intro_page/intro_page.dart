import 'package:login_page/controller/contactContaroller.dart';
import 'package:login_page/headers.dart';
import 'package:login_page/pages/home_page/componets/imageCircle.dart';
import 'package:login_page/pages/intro_page/componets/subContainer.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              // container
              Align(
                alignment: const Alignment(0, -0.8),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      //name
                      Align(
                        alignment: const Alignment(0, -0.2),
                        child: Text(
                          Provider.of<ContactController>(context)
                              .allContact[index]
                              .name as String,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //contact
                      Align(
                        alignment: const Alignment(0, 0.2),
                        child: Text(
                          "+91 ${Provider.of<ContactController>(context).allContact[index].contact as String}",
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, 0.8),
                        child: Row(
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //image
              Align(
                alignment: const Alignment(0, -0.95),
                child: leadingImage(
                  index: index,
                  context: context,
                  radius: 50,
                  size: 30,
                ),
              ),
              // sub row
              subContainer(index: index, context: context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 100,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.qr_code_scanner,
                  ),
                ),
                Text("QR code")
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                  ),
                ),
                Text("Edit")
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                  ),
                ),
                Text("Share")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
