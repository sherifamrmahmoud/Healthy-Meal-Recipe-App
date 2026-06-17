import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';
import 'package:nti5/core/styles/styles_manager.dart';
import 'package:nti5/core/widgtes/button_widget.dart';
import 'package:nti5/features/auth/widgets/custom_text_form_field.dart';
import 'package:nti5/features/auth/widgets/or_divider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Log in ', style: StylesManager.titleText20Style),
                  SizedBox(height: screenHeight * 0.01),

                  CustomTextField(
                    hint: 'email',
                    prefixIcon: Icons.person,
                    controller: emailController,
                  ),

                  CustomTextField(
                    hint: 'password',
                    prefixIcon: Icons.key,
                    controller: passwordController,
                  ),

                  SizedBox(height: screenHeight * 0.05),

                  ButtonWidget(
                    onpress: () {
                      if (kDebugMode) {
                        print('Login Success');
                      }

                      // 🛠️ التعديل السحري: بيفتح الـ Home ويمسح صفحة الـ Login والـ Signup اللي قبلها
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/home',
                        (route) => false,
                      );
                    },
                    text: 'Log in ',
                  ),

                  SizedBox(height: screenHeight * 0.02),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: ColorsManager.greyColor),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: ColorsManager.greyColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.03),
                  OrDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
