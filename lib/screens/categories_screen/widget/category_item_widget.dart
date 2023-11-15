import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/models/others/route_argument.dart';
import 'package:trendy_treasures/route_generator.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget(
      {super.key,
      required this.category,
      required this.products,
      required this.index});
  final Map<String, dynamic> category;
  final List<Product> products;
  final int index;
  @override
  Widget build(BuildContext context) {
    log(products.length.toString());
    final arguments =
        RouteArgument(category: category['type'], products: products);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          RouteGenerator.categoryProductsScreen,
          arguments: arguments,
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        alignment: index.isOdd ? Alignment.centerLeft : Alignment.centerRight,
        height: 110,
        padding: index.isOdd
            ? const EdgeInsets.only(left: 12)
            : const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(category["image"]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleTextWidget(
              title: category['type'],
              fontSize: 18,
            ),
            TitleTextWidget(
              title: products.length.toString(),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            )
          ],
        ),
      ),
    );
  }
}
