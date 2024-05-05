import 'package:login_page/headers.dart';

class QRCode extends StatelessWidget {
  const QRCode({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<ContactController>(context).allContact[index].name
                  as String,
              style: const TextStyle(
                fontSize: 36,
              ),
            ),
            Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: QrImageView(
                data: Provider.of<ContactController>(context)
                    .allContact[index]
                    .contact as String,
                size: 200,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Scan the QR code to add this contact',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
