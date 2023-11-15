import 'package:flutter/material.dart';

import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures/models/others/coupon.dart';
import 'package:trendy_treasures/providers/coupons.dart';
import 'package:trendy_treasures/utils/list.dart';

class SelectCoupons extends StatefulWidget {
  const SelectCoupons({super.key, required this.category});
  final String? category;
  @override
  State<SelectCoupons> createState() => _SelectCouponsState();
}

class _SelectCouponsState extends State<SelectCoupons> {
  List<Coupon> coupons = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final couponsProvider = Provider.of<CouponsProvider>(context);

    switch (widget.category) {
      case 'Clothes':
        coupons = clothesCoupons;
        break;

      case 'Bags':
        coupons = bagCoupons;
        break;

      case 'Shoes':
        coupons = shoesCoupons;
        break;

      case 'Electronics':
        coupons = electronicCoupons;
        break;

      case 'Jewelry':
        coupons = jewelryCoupons;
        break;
      default:
        coupons = [];
    }

    List<MultiSelectItem<Coupon>> items = [];

    if (widget.category != null) {
      items = coupons
          .map((coupon) => MultiSelectItem<Coupon>(coupon, coupon.condition))
          .toList();
    }
    List<Coupon> selectedCoupons = [];

    return Column(
      children: [
        AbsorbPointer(
          absorbing: widget.category != null ? false : true,
          child: MultiSelectDialogField(
            items: items,
            title: const Text("Coupons"),
            selectedColor: Colors.blue,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
            ),
            buttonIcon: const Icon(
              Icons.pets,
              color: Colors.blue,
            ),
            buttonText: Text(
              "Select Coupons",
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 16,
              ),
            ),
            onConfirm: (results) {
              selectedCoupons = results;
              couponsProvider.setCoupons(coupons: results);
            },
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
