import 'package:dw9_delivery_app/app/splash/splash_Page.dart';
import 'package:flutter/material.dart';

class Dw9DelivaryApp extends StatelessWidget {

  const Dw9DelivaryApp({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        title: 'Delivery App',
        routes: {
          '/' : (context) => const SplashPage(),
        }, 
       );
  }
}