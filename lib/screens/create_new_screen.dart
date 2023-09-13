import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msme_connect/constants.dart';
import 'package:msme_connect/screens/sign_in_screen.dart';
import 'package:msme_connect/widgets/form_bg.dart';

class CreateNewScreen extends StatefulWidget {
  const CreateNewScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewScreen> createState() => _CreateNewScreenState();
}

class _CreateNewScreenState extends State<CreateNewScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController GSTController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confPassController = TextEditingController();
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
    print(height * 0.03);
    return Scaffold(
      body: Stack(
        children: [
          buildFormBg(
            width,
            height,
          ),
          SizedBox(
            width: width,
            height: height,
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(
                        height: height * 0.25,
                      ),
                      Container(
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
                                "Create a new account",
                                style: GoogleFonts.poppins(
                                  color: kTextColor,
                                  fontSize: width * 0.0815,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Please, fill all the details.",
                                style: GoogleFonts.poppins(
                                  color: kTextColor,
                                  fontSize: width * 0.0815 / 2,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    TextFormField(
                                      controller: companyController,
                                      decoration: kInputTextDecoration.copyWith(
                                        hintText: "Company name",
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TextFormField(
                                      controller: companyController,
                                      decoration: kInputTextDecoration.copyWith(
                                        hintText: "Contact no.",
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TextFormField(
                                      autovalidateMode: AutovalidateMode.always,
                                      controller: emailController,
                                      decoration: kInputTextDecoration.copyWith(
                                        hintText: "Email",
                                      ),
                                      validator: validateEmail,
                                    ),
                                    SizedBox(
                                      height: height * 0.02,
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
                                      height: height * 0.02,
                                    ),
                                    TextFormField(
                                      obscureText: hideText,
                                      controller: confPassController,
                                      decoration: kInputTextDecoration.copyWith(
                                        hintText: "Confirm password",
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
                                      height: height * 0.02,
                                    ),
                                    TextFormField(
                                      autovalidateMode: AutovalidateMode.always,
                                      controller: GSTController,
                                      decoration: kInputTextDecoration.copyWith(
                                        hintText: "GST No.",
                                      ),
                                      validator: validateEmail,
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
                                          "SIGN UP  ",
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: width * 0.0815 / 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (builder) => SignInScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Already have an account?",
                                    style: GoogleFonts.poppins(
                                      fontSize: width * 0.0815 / 2,
                                      color: kTextColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
