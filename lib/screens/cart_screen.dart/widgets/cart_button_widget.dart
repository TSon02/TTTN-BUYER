import 'package:flutter/material.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({super.key, required this.title, required this.onNav});

  final String title;
  final void Function() onNav;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNav,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
