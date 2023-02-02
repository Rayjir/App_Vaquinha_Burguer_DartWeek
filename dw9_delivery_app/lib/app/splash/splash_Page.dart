import 'package:dw9_delivery_app/app/core/env/env.dart';
import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(children: [
        Container(),
        DeliveryButton(
          width: 200,
          height: 200,
          label: Env.i['backend_base_url'] ?? ' ',
          onPressed: () {},
        ),
        Row(children: [
          Container(
            color: Colors.red,
            width: context.percentwidth(.5),
            height: context.percentheight(.5),
          )
        ],),
        TextFormField(
          decoration: InputDecoration(labelText: 'Text'),
        ),
      ]),
    );
  }
}
