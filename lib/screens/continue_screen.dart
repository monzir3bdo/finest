import 'package:finest/screens/register/otp_screen.dart';
import 'package:finest/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';

class ContinueScreen extends StatefulWidget {
  
  const ContinueScreen({super.key});

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/images/Vector-Sectionshape.svg',
                ),
              ),
              const Text(
                AppStrings.completeProfile,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins-Regular',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppStrings.knowAboutYou,
                style: TextStyle(
                  color: ColorsManager.smallTextColor,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        SvgPicture.asset(ImagesManager.genderSvg),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Your Gender'),
                      ],
                    ),
                    suffix: DropdownButton(
                      onChanged: ((value) {}),
                      items: [],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsManager.borderColor,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    filled: true,
                    fillColor: ColorsManager.borderColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        SvgPicture.asset(ImagesManager.calendarSvg),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Date of Birth'),
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: ColorsManager.borderColor,
                      ),
                    ),
                    filled: true,
                    fillColor: ColorsManager.borderColor,
                  ),
                  onTap: () async {
                    final DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2020, 11, 17),
                      firstDate: DateTime(2017, 1),
                      lastDate: DateTime(2022, 7),
                      helpText: 'Select a date',
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  keyboardType: KeyboardManager.numberKeyboard,
                  decoration: InputDecoration(
                      label: Row(
                        children: [
                          SvgPicture.asset(ImagesManager.weightSvg),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('Your weight'),
                        ],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: ColorsManager.borderColor,
                        ),
                      ),
                      filled: true,
                      fillColor: ColorsManager.borderColor),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        SvgPicture.asset(ImagesManager.swapSvg),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Your height'),
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: ColorsManager.borderColor,
                      ),
                    ),
                    fillColor: ColorsManager.borderColor,
                    filled: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: ColorsManager.borderColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: ColorsManager.borderColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 27),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => OtpScreen())));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 70),
                    backgroundColor: ColorsManager.linearColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Continue'),
                      SvgPicture.asset(ImagesManager.rightArrowSvg),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
