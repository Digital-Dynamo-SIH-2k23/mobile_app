import 'package:flutter/material.dart';

Widget buildFormBg(width, height) => Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: width,
        height: height * 0.4,
        child: Image(
          image: AssetImage('assets/images/signin.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
