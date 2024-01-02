import 'package:flutter/material.dart';
import 'package:flutter_api/model/product_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail product'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              width: 300,
              height: 300,
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
          ),
          Text(
            model.description,
          )
        ],
      ),
    );
  }
}
