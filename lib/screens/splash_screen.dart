import 'package:finest/resources/color_manager.dart';
import 'package:finest/screens/information1_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: height * 0.44),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Fitnest',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'X',
                        style: TextStyle(
                          fontSize: 50,
                          color: ColorsManager.endLinearColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Everybody Can Train',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.2),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InFormationScreen1(),
                      ),
                    );
                  },
                  child: const Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(width * 0.9, height * 0.08),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    backgroundColor: ColorsManager.endLinearColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
