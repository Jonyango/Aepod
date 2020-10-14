import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aepod/components/components.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C9359),
      body: SafeArea(
        child: Center(
          child: Stack(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12.0, top:45.0),
                child: SvgPicture.asset('assets/images/icon.svg',
                    color: Colors.white),
              ),
            ),
            SvgPicture.asset('assets/images/Ellipse 1 (Stroke).svg'),
            Positioned(
              top: 280,
              left: 20,
              child: Text(
                'Welcome to Aepod',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.2,
                    fontSize: 25.0
                    ),
              ),
            ),
            Positioned(
              top: 310,
              left: 20,
              child: Text(
                'Grow plants easily from your home with our \n award winning pods',
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
              ),
            ),
            Positioned(
              top: 440,
              left:20,
              child: Button(
                buttonName: 'Register',
                backgroundColor: Colors.white,
                textColor: Color(0xff0C9359),
              ),
            ),
            Positioned(
              top: 500,
              left:20,
              child: Button(
                buttonName: 'Login',
                backgroundColor: Colors.transparent,
                textColor: Colors.white,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
