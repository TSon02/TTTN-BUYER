import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:trendy_treasures/models/others/route_argument.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/grid_category_products_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({super.key, required this.arguments});

  final RouteArgument arguments;

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  final _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          AnimSearchBar(
            helpText: 'Search...',
            boxShadow: false,
            width: MediaQuery.sizeOf(context).width,
            textController: _editingController,
            color: Colors.white,
            prefixIcon: const Icon(
              Icons.search,
              size: 26,
            ),
            onSuffixTap: () {
              setState(() {
                _editingController.clear();
              });
            },
            onSubmitted: (p0) {},
          )
        ],
      ),
      body: widget.arguments.products.isEmpty
          ? const Center(
              child: TitleTextWidget(
                title: 'No products',
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            )
          : SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(
                      title: widget.arguments.category,
                      fontSize: 20,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    GridCategoryProducts(products: widget.arguments.products),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
