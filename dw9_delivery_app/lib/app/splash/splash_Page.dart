import 'package:dw9_delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black)),
        primaryColor: ColorsApp.i.primary,
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsApp.i.primary,
            primary: ColorsApp.i.primary,
            secondary: ColorsApp.i.secondary),
        elevatedButtonTheme:
            ElevatedButtonThemeData(style: AppStyles.i.primaryButton),
            inputDecorationTheme: InputDecorationTheme(
              fillColor: Colors.white,
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.all(15),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(color: Colors.grey[400]!))
            )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Splash'),
        ),
        body: Column(children: [
          Container(),
          ElevatedButton(onPressed: () {}, child: Text('test')),
          TextFormField(),
        ]),
      ),
    );
  }
}
