import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/data_source/firebase_data_source.dart';
import 'package:nti5/features/auth/login/login_screen.dart';
import 'package:nti5/features/auth/signup/signup_screen.dart';
import 'package:nti5/features/home/cubit/homeCubit.dart';
import 'package:nti5/features/main_navigator/main_navigation.dart';
import 'package:nti5/features/onboarding/onboarding_screen.dart';
import 'package:nti5/features/splash/splash_screen.dart';
import 'package:nti5/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  FirebaseDataSource firebaseDataSource = FirebaseDataSource();
  await firebaseDataSource.addData();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => Homecubit()..getMeals(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        routes: {
          '/onboarding': (context) => OnboardingScreen(),
          '/signup': (context) => SignupScreen(),
          '/login': (context) => LoginScreen(),
         
          '/home': (context) => const MainNavigation(),
        },
      ),
    );
  }
}