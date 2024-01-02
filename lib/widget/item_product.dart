import 'package:flutter/material.dart';
import 'package:flutter_api/model/product_model.dart';
import 'package:flutter_api/view/detail_screen.dart';
import 'package:get/get.dart';

Widget itemProduct(ProductModel model) {
  return GestureDetector(
    onTap: () => Get.to(DetailScreen(
      model: model,
    )),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: Colors.grey,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SizedBox(
              height: 180,
              child: Hero(
                tag: model.id,
                child: Image.network(model.image),
              ),
            ),
          ),
          Text(
            model.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            model.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '\$ ${model.price}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ),
  );
}
