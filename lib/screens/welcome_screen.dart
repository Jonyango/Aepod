import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aepod/components/components.dart';
import 'package:aepod/constants/index.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      body: SafeArea(
        child: Center(
          child: Stack(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12.0, top: 45.0),
                child: SvgPicture.asset('assets/images/icon.svg',
                    color: kTextColor),
              ),
            ),
            Positioned(
              top: -170,
              child: SvgPicture.asset('assets/images/Ellipse 1 (Stroke).svg',)),
            Positioned(
              top: 90,
              child: SvgPicture.asset('assets/images/Ellipse 2 (Stroke).svg')),
            Positioned(
              top: 370,
              child: SvgPicture.asset('assets/images/Ellipse 3 (Stroke).svg')),
            Positioned(
              top: 280,
              left: 20,
              child: Text(
                'Welcome to Aepod',
                style: kTitleTextStyle,
              ),
            ),
            Positioned(
              top: 310,
              left: 20,
              child: Text(
                'Grow plants easily from your home with our \n award winning pods',
                style:kTextStyle,
              ),
            ),
            Positioned(
              top: 440,
              left: 20,
              child: Button(
                buttonName: 'Register',
                backgroundColor: kTextColor,
                textColor: kThemeColor,
              ),
            ),
            Positioned(
              top: 500,
              left: 20,
              child: Button(
                buttonName: 'Login',
                backgroundColor: Colors.transparent,
                textColor: kTextColor,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
