import 'package:finest/resources/color_manager.dart';
import 'package:finest/screens/register/register_screen.dart';
import 'package:finest/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/assets_manager.dart';
import 'continue_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Center(
                  child: Text(
                    'Hey There,',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                //Email Field
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Row(
                        children: [
                          SvgPicture.asset(ImagesManager.emailIcon),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('Email'),
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

                const SizedBox(
                  height: 50,
                ),
                //Password Field
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Row(
                        children: [
                          SvgPicture.asset(ImagesManager.lockIcon),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('Email'),
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
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Your Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: ColorsManager.loginForgetColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                //Login Button
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => WelcomeScreen()),
                        ),
                      );
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
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SvgPicture.asset(ImagesManager.loginArrow),
                        const Text('Login'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 55,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        ImagesManager.newGoogle,
                      ),
                    ),
                    IconButton(
                      iconSize: 55,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        ImagesManager.facebookIcon,
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('Don\'t have an account yet?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
