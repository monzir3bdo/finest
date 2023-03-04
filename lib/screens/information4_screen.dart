import 'package:finest/resources/assets_manager.dart';
import 'package:finest/resources/color_manager.dart';
import 'package:finest/screens/register/goal_screen.dart';
import 'package:finest/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationScreen4 extends StatelessWidget {
  const InformationScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: ColorsManager.whiteColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => GoalScreen(),
                ),
              );
            },
            child: SvgPicture.asset(
              ImagesManager.button4Svg,
              width: 80,
              height: 80,
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child:
                    Center(child: SvgPicture.asset(ImagesManager.meditateGirl)),
              ),
              const SizedBox(
                height: 120,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 100,
                ),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Improve Sleep Quality',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: Text(AppStrings.longTextInfo4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
