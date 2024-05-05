import 'dart:io';
import 'package:login_page/headers.dart';

class StepperController extends ChangeNotifier {
  int CurrentStep = 0;

  void nextStep() {
    if (CurrentStep < 3) {
      if (ContactGlobal.form[CurrentStep].currentState!.validate()) {
        CurrentStep++;
      }
    }
    if (CurrentStep < 2) {
      if (ContactGlobal.form[CurrentStep].currentState!.validate()) {
        ContactGlobal.form[CurrentStep].currentState!.save();
      }
    }

    notifyListeners();
  }

  void previousStep() {
    if (CurrentStep > 0) {
      CurrentStep--;
    }
    notifyListeners();
  }

  bool isActive({required int index}) => CurrentStep == index;

  StepState getStepState({required int index}) {
    return CurrentStep > index
        ? StepState.complete
        : CurrentStep == index
            ? StepState.editing
            : StepState.disabled;
  }

  void reload() {
    CurrentStep = 0;
    ContactGlobal.contactImage = null;
  }

  Future<void> getImage({required ImageSource source}) async {
    ImagePicker picker = ImagePicker();

    XFile? file = await picker.pickImage(source: source);

    if (file != null) {
      ContactGlobal.contactImage = File(file.path);
      notifyListeners();
    }
  }
}
