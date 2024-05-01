import 'dart:ui';

import 'package:flutter/material.dart';

Widget background() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://en.khabarhardin.com/wp-content/uploads/2023/08/d87d0629-26b3-4c70-b11f-a16c7d113416.jpeg",
        ),
        fit: BoxFit.cover,
      ),
      // color: Colors.amber,
    ),
  );
}
