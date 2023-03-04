import 'package:finest/resources/assets_manager.dart';
import 'package:finest/resources/color_manager.dart';
import 'package:finest/resources/strings_manager.dart';
import 'package:finest/screens/information1_screen.dart';
import 'package:finest/screens/information4_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationScreen3 extends StatelessWidget {
  const InformationScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: ColorsManager.whiteColor,
            elevation: 0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InformationScreen4(),
                ),
              );
            },
            child: SvgPicture.asset(
              ImagesManager.button3Svg,
              width: 80,
              height: 80,
            ),
          ),
        ),
        backgroundColor: ColorsManager.whiteColor,
        body: Container(
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: ColorsManager.endLinearColor,
                  width: double.infinity,
                  height: 450,
                  child: Container(
                    margin: EdgeInsets.all(30),
                    child: Center(
                      child: SvgPicture.asset(
                        ImagesManager.secondMan,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50, right: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Eat Well',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  AppStrings.longTextInfo3,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
