import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/models/others/coupon.dart';
import 'package:trendy_treasures/providers/order_details_provider.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class CouponCode extends StatefulWidget {
  const CouponCode({
    super.key,
    required this.coupons,
    required this.index,
    // required this.onSelectedCoupon
  });
  final List<Coupon> coupons;
  final int index;
  // final void Function({required Coupon coupon}) onSelectedCoupon;
  @override
  State<CouponCode> createState() => _CouponCodeState();
}

class _CouponCodeState extends State<CouponCode> {
  Coupon? _coupon;
  @override
  Widget build(BuildContext context) {
    final orderProvider =
        Provider.of<OrderDetailsProvider>(context, listen: false);

    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  height: MediaQuery.sizeOf(context).height / 2,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 235, 229, 229),
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(
                            height: 12,
                          ),
                          for (var coupon in widget.coupons)
                            ListTile(
                              title: Text(coupon.condition),
                              leading: Radio(
                                value: coupon,
                                groupValue: _coupon,
                                onChanged: (Coupon? coupon) {
                                  setState(() {
                                    _coupon = coupon!;

                                    log(_coupon!.toRawJson());
                                  });

                                  orderProvider.updateOrderProduct(
                                      index: widget.index, coupon: coupon!);

                                  log(orderProvider
                                      .orderProducts[widget.index].coupon!
                                      .toRawJson());
                                  this.setState(() {});
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Material(
          borderRadius: BorderRadius.circular(12),
          elevation: 10,
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/coupon.png'),
                      ),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleTextWidget(
                        title: 'Add Coupon Code',
                        fontSize: 14,
                      ),
                      SubTitleWidget(
                          subTitle: '#${_coupon?.id ?? 'XXX'}', fontSize: 11),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
