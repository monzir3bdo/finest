import 'package:finest/resources/assets_manager.dart';
import 'package:finest/resources/color_manager.dart';
import 'package:finest/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: Container(
        padding: const EdgeInsets.only(
          top: 100,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                ImagesManager.welcome,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Welcome Monzir',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 40,
              ),
              child: Text(
                AppStrings.longTextWelcome,
                style: TextStyle(
                  color: ColorsManager.smallTextColor,
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              AppStrings.longTextWelcome2,
              style: TextStyle(
                color: ColorsManager.smallTextColor,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 230,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.infinity, 70),
                  backgroundColor: ColorsManager.linearColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('Go To Home'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
