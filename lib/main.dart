import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:graduation_project/features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const FitFork());
}

class FitFork extends StatelessWidget {
  const FitFork({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),
      home: const SplashView(),
    );
  }
}
