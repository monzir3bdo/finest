import 'package:finest/resources/assets_manager.dart';
import 'package:finest/resources/color_manager.dart';
import 'package:finest/resources/strings_manager.dart';
import 'package:finest/screens/information3_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class InformationScreen2 extends StatelessWidget {
  const InformationScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InformationScreen3(),
                ),
              );
            },
            elevation: 0,
            backgroundColor: ColorsManager.whiteColor,
            foregroundColor: ColorsManager.whiteColor,
            child: SvgPicture.asset(
              ImagesManager.button2Svg,
              height: 75,
              width: 75,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Center(
                child: SvgPicture.asset(ImagesManager.runnerGuySvg),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Get Burn',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 50, right: 30),
                child: Text(AppStrings.longTextInfo2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
