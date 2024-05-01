import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/routes_utils.dart';

Widget login({required size, required context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.08,
          ),
          Text(
            "FIND",
            style: GoogleFonts.rubikBubbles(
              color: Colors.white,
              fontSize: 35,
              letterSpacing: 3,
            ),
          ),
          SizedBox(
            height: size.height * 0.62,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: const Alignment(0, 0.6),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.loginpage2);
                },
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text("Log In"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: const Alignment(0, 0.75),
              child: Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Don't have an account? SignUp",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
