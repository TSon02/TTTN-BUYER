import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class PopularProductWidget extends StatelessWidget {
  const PopularProductWidget({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 15,
        child: Container(
          width: double.infinity,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                // Container(
                //   width: 65,
                //   height: 65,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //       image: NetworkImage(product.images[0]),
                //     ),
                //   ),
                // ),

                CachedNetworkImage(
                  imageUrl: product.images[0],
                  imageBuilder: (context, imageProvider) => Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(title: product.productBrand),
                    SubTitleWidget(subTitle: product.productName, fontSize: 12),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.yellow,
                        ),
                        TitleTextWidget(
                            title: ' ${product.rating}', fontSize: 12),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                TitleTextWidget(
                    title: '\$${double.tryParse(product.price.toString())}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
