import 'package:finest/resources/assets_manager.dart';
import 'package:finest/resources/color_manager.dart';
import 'package:finest/screens/information2_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InFormationScreen1 extends StatelessWidget {
  const InFormationScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: ((context) => InformationScreen2())));
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const InformationScreen2(),
            //   ),
            // );
          },
          backgroundColor: ColorsManager.whiteColor,
          elevation: 0,
          child: SvgPicture.asset(
            ImagesManager.button1Svg,
            width: 80,
            height: 80,
          ),
        ),
      ),
      backgroundColor: ColorsManager.whiteColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Center(
                child: ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    color: ColorsManager.linearColor,
                    child: Center(
                      child: SvgPicture.asset(
                        ImagesManager.girlSvg,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Track Your Goal',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 30),
                child: const Text(
                    "Don't worry if you have trouble determining your goals, We can help you determining your goals and track your goals",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
        size.width / 4,
        size.height - 40,
        size.width / 2,
        size.height - 20,
      )
      ..quadraticBezierTo(
        3 / 4 * size.width,
        size.height,
        size.width,
        size.height - 40,
      )
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
