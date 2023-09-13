import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kTextColor = Colors.black.withOpacity(0.81);
Color kTextColorL2 = Colors.black.withOpacity(0.5);
Color kBorderColor = Color(0xff291906);

var kInputTextDecoration = InputDecoration(
  hintStyle: GoogleFonts.poppins(),
  hintText: "Email",
  border: OutlineInputBorder(
    borderSide: BorderSide(color: kBorderColor, width: 3.0),
    borderRadius: BorderRadius.circular(16.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBorderColor, width: 3.0),
    borderRadius: BorderRadius.circular(16.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBorderColor, width: 3.0),
    borderRadius: BorderRadius.circular(16.0),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBorderColor, width: 3.0),
    borderRadius: BorderRadius.circular(16.0),
  ),
);

const kSignInBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  ),
);

var kElevatedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: kBorderColor,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(
        color: kBorderColor,
      )),
);
