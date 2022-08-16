import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roster_co/screens/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Skip',
                    style: TextStyle(
                        color: Color(0xffABAAAA),
                        // color: Color(0xff388A75),
                        fontFamily: 'Metropolis',
                        fontSize: 15),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              Text(
                'Roster Co',
                style: GoogleFonts.rancho(
                  textStyle: const TextStyle(fontSize: 52),
                ),
              ),
              SizedBox(
                child: Image.asset(
                  'assets/images/welcome_img.png',
                  width: 275,
                ),
              ),
              const Text(
                'Welcome!',
                style: TextStyle(fontFamily: 'Metropolis', fontSize: 25),
              ),
              Text(
                'Welcome to our world,\nHere you can make yourself \nbetter each day!',
                textAlign: TextAlign.center,
                style: GoogleFonts.indieFlower(
                  textStyle:
                      const TextStyle(fontSize: 21, color: Color(0xff717171)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            () => const HomeScreen(),
            transition: Transition.cupertino,
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        backgroundColor: Colors.black,
        child: const Icon(
          FontAwesomeIcons.arrowRightLong,
          size: 25,
        ),
      ),
    );
  }
}
