import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trendy_treasures/models/others/coupon.dart';
import 'package:trendy_treasures/models/product/response/order_product.dart';
import 'package:trendy_treasures/screens/delivery_address/widgets/promo_code.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.product,
    required this.coupons,
    required this.index,
  });
  final OrderProduct product;
  final List<Coupon> coupons;
  final int index;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  // Coupon? couponSelected;

  // void setSelectedCoupon({required Coupon coupon}) {
  //   setState(() {
  //     couponSelected = coupon;
  //     final orderProvider =
  //         Provider.of<OrderDetailsProvider>(context, listen: false);
  //     orderProvider.setCoupons(coupon: coupon);
  //   });
  // }

  double stringToNumber({required String value}) {
    double modifiedValue = double.parse(value.replaceAll("\$", ""));

    return modifiedValue;
  }

  @override
  Widget build(BuildContext context) {
    int quantity = widget.product.productVariant.quantity;
    num price = widget.product.price;

    // final orderProvider =
    //     Provider.of<OrderDetailsProvider>(context, listen: false);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Material(
            borderRadius: BorderRadius.circular(12),
            elevation: 10,
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: widget.product.image,
                      imageBuilder: (context, imageProvider) => Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleTextWidget(
                          title: widget.product.productBrand,
                          fontSize: 15,
                        ),
                        SubTitleWidget(
                            subTitle: widget.product.productName, fontSize: 11),
                        Row(
                          children: [
                            SubTitleWidget(
                                subTitle:
                                    'Quantity: ${widget.product.productVariant.quantity}',
                                fontSize: 11),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: Color(
                                  int.parse(
                                      widget.product.productVariant.hexColor
                                          .replaceAll('#', ''),
                                      radix: 16),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          child: Text(
                            '\$${(price * quantity).toDouble()}',
                            style: TextStyle(
                                decoration: widget.product.coupon != null
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        widget.product.coupon != null
                            ? SizedBox(
                                width: 70,
                                child: TitleTextWidget(
                                  title: widget.product.coupon!.value
                                          .contains('\$')
                                      ? '\$${(price * quantity - quantity * stringToNumber(
                                            value: widget.product.coupon!.value,
                                          )).toDouble()}'
                                      : '\$${(price * quantity - price * quantity * double.parse(widget.product.coupon!.value)).toDouble()}',
                                  fontSize: 15,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        CouponCode(
          coupons: widget.coupons,
          // onSelectedCoupon: setSelectedCoupon,
          index: widget.index,
        ),
      ],
    );
  }
}
