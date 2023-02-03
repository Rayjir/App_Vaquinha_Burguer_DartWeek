import 'package:dw9_delivery_app/app/core/config/env.dart';
import 'package:dw9_delivery_app/app/repositories/dw9_delivary_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(const Dw9DelivaryApp());
}
