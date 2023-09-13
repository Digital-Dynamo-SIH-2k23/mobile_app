import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msme_connect/constants.dart';
import 'package:msme_connect/screens/create_new_screen.dart';
import 'package:msme_connect/widgets/form_bg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool hideText = true;
  bool rememberMe = false;

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    print(height * 0.04);
    return Scaffold(
      body: Stack(
        children: [
          buildFormBg(
            width,
            height,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: width,
              height: height,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: kSignInBoxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 42.0,
                          top: 40,
                          right: 42.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Welcome back!",
                              style: GoogleFonts.poppins(
                                color: kTextColor,
                                fontSize: width * 0.0815,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Please, sign in to continue.",
                              style: GoogleFonts.poppins(
                                color: kTextColor,
                                fontSize: width * 0.0815 / 2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.06,
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  TextFormField(
                                    autovalidateMode: AutovalidateMode.always,
                                    controller: emailController,
                                    decoration: kInputTextDecoration,
                                    validator: validateEmail,
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  TextFormField(
                                    obscureText: hideText,
                                    controller: passwordController,
                                    decoration: kInputTextDecoration.copyWith(
                                      hintText: "Password",
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          hideText = !hideText;
                                          setState(() {});
                                        },
                                        child: Icon(
                                          hideText
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: kElevatedButtonStyle,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16.0,
                                      ),
                                      child: Text(
                                        "LOG IN",
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: width * 0.0815 / 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 24.0,
                                        width: 24.0,
                                        child: Checkbox(
                                          activeColor: kBorderColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          value: rememberMe,
                                          onChanged: (value) {
                                            setState(() {
                                              rememberMe = value!;
                                            });
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Remember me",
                                        style: GoogleFonts.poppins(
                                          fontSize: width * 0.0815 / 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Center(
                              child: Text(
                                "Forgot password?",
                                style: GoogleFonts.poppins(
                                  fontSize: width * 0.0815 / 2,
                                  color: kTextColorL2,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => CreateNewScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Don't have an account?",
                                  style: GoogleFonts.poppins(
                                    fontSize: width * 0.0815 / 2,
                                    color: kTextColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
