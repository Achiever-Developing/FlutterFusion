import 'dart:async';

import 'package:login_page/headers.dart';

Widget form({required context}) {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  return Form(
    key: _formKey,
    child: Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: TextFormField(
            onSaved: (val) {
              PersonalGlobal.username = val;
            },
            validator: (val) => (val!.isEmpty) ? "Enter your username" : null,
            decoration: InputDecoration(
              fillColor: Colors.orange.withOpacity(0.4),
              filled: true,
              focusColor: Colors.black,
              contentPadding: const EdgeInsets.all(16),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
              label: const Text(
                "User Name",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              prefixIcon: const Icon(Icons.person),
            ),
            textInputAction: TextInputAction.next,
            cursorColor: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            onSaved: (val) {
              PersonalGlobal.password = val;
            },
            validator: (val) => (val!.isEmpty) ? "Enter your password" : null,
            decoration: InputDecoration(
              fillColor: Colors.orange.withOpacity(0.4),
              filled: true,
              focusColor: Colors.black,
              contentPadding: const EdgeInsets.all(16),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
              label: const Text(
                "Password",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              prefixIcon: const Icon(Icons.lock),
            ),
            textInputAction: TextInputAction.done,
            cursorColor: Colors.black,
            obscureText: true,
          ),
        ),
        const Text("Forgot Password ?"),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: const Alignment(0, 0.6),
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 3),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                  if (_formKey.currentState!.validate()) {
                    Provider.of<UserNameController>(context, listen: false)
                        .userNameF();
                    Navigator.pushReplacementNamed(context, Routes.homepage);
                  }
                },
                child: const Center(
                  child: Text("Log In"),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
