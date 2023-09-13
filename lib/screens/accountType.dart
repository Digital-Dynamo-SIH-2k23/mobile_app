import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class selectAccountType extends StatelessWidget {
  const selectAccountType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Container(
            height: height * 0.5,
            width: width,
            child: Image.asset(
              'assets/images/2.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                    child: Text("Select your account type",
                        style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            height: 1.2)),
                  ),

                  //   style: GoogleFonts.poppins(
                  //       fontSize: 32, fontWeight: FontWeight.w700),
                  // ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SizedBox(
                    width: width * 0.9,
                    height: height * 0.065,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "SELLER",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          backgroundColor: Color(0xFF291906),
                        )),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              // thickness: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 20),
                            child: Text("Or"),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black45,
                              // thickness: 5,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: width * 0.9,
                    height: height * 0.065,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "BUYER",
                          style: GoogleFonts.poppins(
                              color: Color(0xff281805),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 2, color: Color(0xFFB49570)),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          // backgroundColor: Color(0xFF291906),
                        )),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 35,
                      ))

                  // FloatingActionButton(
                  //   backgroundColor: Colors.transparent,
                  //   elevation: 0,
                  //   onPressed: () {},
                  //   child: Icon(Icons.arrow_back_rounded),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
