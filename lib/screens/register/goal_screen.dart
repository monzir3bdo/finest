import 'package:carousel_slider/carousel_slider.dart';
import 'package:finest/resources/assets_manager.dart';
import 'package:finest/resources/color_manager.dart';
import 'package:finest/screens/register/register_screen.dart';
import 'package:finest/screens/continue_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

List<SvgPicture> images = [
  SvgPicture.asset(
    ImagesManager.card1,
  ),
  SvgPicture.asset(ImagesManager.card2),
  SvgPicture.asset(ImagesManager.card3),
];

class _GoalScreenState extends State<GoalScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: height * .052),
          child: Column(
            children: [
              const Text(
                'What is your goal?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: height * 0.011,
              ),
              const Text('It will help us to choose a best'),
              SizedBox(
                height: height * 0.005,
              ),
              const Text('program for you'),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: CarouselSlider(
                  items: images,
                  options: CarouselOptions(
                    height: height * 0.6,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => RegisterScreen()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 0.87, height * 0.08),
                  backgroundColor: ColorsManager.linearColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('Confirm'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
