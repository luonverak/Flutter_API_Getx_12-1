import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_controller.dart';
import '../widget/item_product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => Visibility(
            visible: productController.loading.value,
            replacement: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1 / 1.5,
              children: List.generate(
                productController.listProduct.length,
                (index) => itemProduct(
                  productController.listProduct[index],
                ),
              ),
            ),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
