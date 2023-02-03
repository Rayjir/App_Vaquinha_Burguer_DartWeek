import 'package:dw9_delivery_app/app/core/ui/helpers/loader.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_appbar.dart';
import 'package:dw9_delivery_app/app/models/product_model.dart';
import 'package:dw9_delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showLoader();
          await Future.delayed(Duration(seconds: 2));
          hideLoader();
        },
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return DeliveryProductTile(
                product: ProductModel(
                  id: 0,
                  name: 'X-Salada',
                  description:
                      'Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese',
                  price: 15.0,
                  image:
                      "https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800",
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}