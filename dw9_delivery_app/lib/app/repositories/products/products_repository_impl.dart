import 'dart:math';

import 'package:dio/dio.dart';
import 'package:dw9_delivery_app/app/core/Exeptions/repository_exeptions.dart';
import 'package:dw9_delivery_app/app/core/restClient/custon_dio.dart';
import 'package:dw9_delivery_app/models/product_model.dart';

import './products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustonDio dio;
  ProductsRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get('/product');
      return result.data
          .map(
            (p) => ProductModel.fromMap(p),
          )
          .tolist();
    } on DioError catch (e, s) {
      log('Erro ao buscar produtos', error: e, stackTrace: s);
      throw RepositoryExeptions(message: 'Erro ao buscar produtos');
    }
  }
}
