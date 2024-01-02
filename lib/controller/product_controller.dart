import 'package:flutter_api/model/product_model.dart';
import 'package:get/get.dart';

import '../service/service_api.dart';

class ProductController extends GetxController {
  RxList<ProductModel> listProduct = <ProductModel>[].obs;
  RxBool loading = true.obs;
  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  Future getProduct() async {
    try {
      var product = await ServiceAPI().fetchData();
      if (product != null) {
        listProduct.value = product;
      }
      loading(true);
    } finally {
      loading(false);
    }
  }
}
