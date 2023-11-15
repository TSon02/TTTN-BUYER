import 'package:flutter/material.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures/utils/list.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key, required this.card});
  final CreditCard card;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  String imageUrl = '';
  void getImage() {
    for (var value in dummyCard) {
      if (value['bank'] == widget.card.bank) {
        imageUrl = value['image'];
      }
    }
  }

  @override
  void initState() {
    getImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
              radius: 30,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                widget.card.bank,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
