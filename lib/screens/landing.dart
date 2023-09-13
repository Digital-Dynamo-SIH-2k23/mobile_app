import 'package:flutter/material.dart';

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/landing2.png',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            color: Colors.black26,
            colorBlendMode: BlendMode.darken,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      '...',
                      style: TextStyle(
                          color: Colors.white, fontSize: 80, letterSpacing: 8),
                    ),
                  ),
                ),
                Text(
                  "Make your buying & selling easy !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 46,
                    height: 1.2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SizedBox(
                  width: width * 0.6,
                  height: height * 0.065,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Get started",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
