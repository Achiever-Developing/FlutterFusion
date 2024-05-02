import 'package:login_page/controller/contactContaroller.dart';
import 'package:login_page/controller/stepperController.dart';

import 'headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserNameController(preferences: preferences),
        ),
        ChangeNotifierProvider(
          create: (context) => ContactController(preferences: preferences),
        ),
        ChangeNotifierProvider(
          create: (context) => StepperController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
