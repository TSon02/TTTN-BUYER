import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/widgets/subtitle_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class SingleProductWidget extends StatefulWidget {
  const SingleProductWidget(
      {super.key, required this.product, required this.onDelete});
  final Product product;
  final Future<void> Function({required String id}) onDelete;

  @override
  State<SingleProductWidget> createState() => _SingleProductWidgetState();
}

class _SingleProductWidgetState extends State<SingleProductWidget> {
  List<String> sizes = [];
  List<String> colors = [];
  int quantity = 0;

  void getProductVariants() {
    for (var productVariant in widget.product.productVariants) {
      if (!sizes.contains(productVariant.size)) {
        sizes.add(productVariant.size);
      }

      if (!colors.contains(productVariant.hexColor)) {
        colors.add(productVariant.hexColor);
      }

      quantity += productVariant.quantity;
    }
  }

  @override
  void initState() {
    getProductVariants();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      confirmDismiss: (direction) async {
        bool isDelete = false;

        await AwesomeDialog(
          context: context,
          dialogType: DialogType.info,
          animType: AnimType.rightSlide,
          title: 'Information',
          desc: 'Are you sure want to delete this product?',
          btnOkOnPress: () async {
            isDelete = true;
            await widget.onDelete(id: widget.product.id);
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
      key: ValueKey(widget.product),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: Material(
          elevation: 25,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 6,
                  spreadRadius: -5,
                  offset: Offset(1, 1),
                ),
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: -5,
                  offset: Offset(-1, 0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.product.images[0] as String),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(
                        title: widget.product.productBrand,
                      ),
                      SubTitleWidget(
                        subTitle: widget.product.productName,
                        fontWeight: FontWeight.w600,
                      ),
                      SubTitleWidget(
                        subTitle: 'quantity: $quantity',
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                      SubTitleWidget(
                        subTitle: 'size: ${sizes.join(',')}',
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                      Row(children: [
                        const SubTitleWidget(
                          subTitle: 'color:',
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          height: 20,
                          width: 110,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                width: 20,
                                height: 20,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: Color(
                                    int.parse(colors[index].replaceAll('#', ''),
                                        radix: 16),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              );
                            },
                            itemCount: colors.length,
                          ),
                        )
                      ]),
                    ],
                  ),
                  const Spacer(),
                  TitleTextWidget(title: '\$ ${widget.product.price}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
