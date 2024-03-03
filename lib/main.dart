
import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'features/splash/presentation/views/splash_vies.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:kPrimaryColor,
       // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      
         home: const SplashViews(),
        );
  }
}
