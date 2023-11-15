import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/models/address/response/address.dart';
import 'package:trendy_treasures/screens/auth_screen/shipping_address_screen/cubit/address_cubit.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({super.key, required this.shippingInformation});

  final ShippingInformation shippingInformation;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(shippingInformation),
      confirmDismiss: (direction) async {
        bool isDelete = false;
        print(shippingInformation.id);
        await AwesomeDialog(
          context: context,
          dialogType: DialogType.info,
          animType: AnimType.rightSlide,
          title: 'delete',
          desc: 'Are you sure want to delete this shipping information?',
          btnOkOnPress: () async {
            isDelete = true;
            await context.read<AddressCubit>().delShippingInforById(
                id: shippingInformation.id, context: context);
          },
          btnCancelOnPress: () {
            isDelete = false;
          },
        ).show();

        return isDelete;
      },
      background: Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    shippingInformation.receiver,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const VerticalDivider(
                    width: 40,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SubTitleWidget(
                    subTitle: shippingInformation.phoneNumber,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SubTitleWidget(
              subTitle: shippingInformation.streetName,
              fontSize: 13,
            ),
            SubTitleWidget(
                fontSize: 13,
                subTitle:
                    '${shippingInformation.level1}, ${shippingInformation.level2}, ${shippingInformation.level3}'),
          ],
        ),
      ),
    );
  }
}
