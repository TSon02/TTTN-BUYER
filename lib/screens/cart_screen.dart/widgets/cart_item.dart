import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/cubit/cart_cubit.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/widgets/counter_widget.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.product,
    required this.index,
    required this.reload,
  });

  final CartProduct product;
  final int index;

  final Future<void> Function() reload;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    // print(widget.product.toRawJson());
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final qtt =
            state.data!.cartProducts[widget.index].productVariant.quantity;
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.product.image,
                    imageBuilder: (context, imageProvider) => Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1,
                          strokeAlign: 1,
                          style: BorderStyle.solid,
                        ),
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
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: CounterWidget(
                      index: widget.index,
                      // onReload: widget.reload,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: GestureDetector(
                      onTap: () async {
                        await AwesomeDialog(
                          context: context,
                          dialogType: DialogType.question,
                          animType: AnimType.rightSlide,
                          title: 'Remove',
                          desc:
                              'Are you sure you want to remove this item from the cart?',
                          btnOkOnPress: () async {
                            await context
                                .read<CartCubit>()
                                .deleteCartProductById(
                                    context: context, id: widget.product.id)
                                .then(
                              (value) async {
                                await widget.reload();
                              },
                            );
                          },
                          btnCancelOnPress: () {},
                        ).show();
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 15,
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(title: widget.product.productBrand),
                      SubTitleWidget(
                        subTitle: widget.product.productName,
                        fontSize: 12,
                      )
                    ],
                  ),
                  const Spacer(),
                  TitleTextWidget(
                    title: '\$${(widget.product.price * qtt).toDouble()}',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
