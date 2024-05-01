import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/pages/login_page_2/form.dart';

Widget all({required context, required size}) {
  return Stack(
    children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffFFE0B5),
        ),
      ),
      Container(
        height: 500,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          image: DecorationImage(
            image: NetworkImage(
              "https://en.khabarhardin.com/wp-content/uploads/2023/08/d87d0629-26b3-4c70-b11f-a16c7d113416.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
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
                    color: Colors.white, fontSize: 35, letterSpacing: 3),
              ),
              const Text(
                "Create your own itenerary!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: const Alignment(0, 0.7),
          child: Container(
            height: 400,
            width: 400,
            decoration: const BoxDecoration(
              color: Color(0xffFFFE0B5),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(3, 3),
                  blurRadius: 10,
                ),
              ],
            ),
            child: form(context: context),
          ),
        ),
      ),
    ],
  );
}
