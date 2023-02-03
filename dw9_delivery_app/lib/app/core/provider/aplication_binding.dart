import 'package:dw9_delivery_app/app/core/rest_client/custon_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AplicationBinding extends StatelessWidget {
  final Widget child;
  const AplicationBinding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(
        create: (context) => CustonDio(),
      )
    ], child: child);
  }
}
