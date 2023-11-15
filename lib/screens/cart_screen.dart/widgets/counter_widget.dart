import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/screens/cart_screen.dart/cubit/cart_cubit.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.index,
    // required this.onReload,
  });

  final int index;

  // final void Function() onReload;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        log(state.data!.cartProducts[index].productVariant.quantity.toString());
        return Container(
          alignment: Alignment.center,
          height: 35,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  if (state.data!.cartProducts[index].productVariant.quantity >
                      1) {
                    // onFunction(index, false);

                    context.read<CartCubit>().updateProduct(
                          index: index,
                          isIncrease: false,
                          context: context,
                        );

                    // onReload();
                  }
                },
                child: const Icon(
                  Icons.remove,
                  size: 15,
                ),
              ),
              Text(
                state.data!.cartProducts[index].productVariant.quantity
                    .toString(),
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<CartCubit>().updateProduct(
                      index: index, isIncrease: true, context: context);

                  // onReload();
                },
                child: const Icon(
                  Icons.add,
                  size: 15,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
