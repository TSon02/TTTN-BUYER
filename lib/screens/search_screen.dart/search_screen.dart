import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/models/product/response/product_response.dart';
import 'package:trendy_treasures/providers/search_provider.dart';
import 'package:trendy_treasures/screens/home_screen/cubit/home_cubit.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/grid_category_products_widget.dart';
import 'package:trendy_treasures/screens/home_screen/widgets/grid_products_widget.dart';
import 'package:trendy_treasures/widgets/title_text_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static BlocProvider<HomeCubit> provider() {
    return BlocProvider(
      create: (context) {
        return HomeCubit();
      },
      child: const SearchScreen(),
    );
  }

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with AfterLayoutMixin {
  List<Product> searchProducts = [];
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<HomeCubit>().getAllProducts(context);
  }

  Timer? _debounce;

  final TextEditingController controller = TextEditingController();

  void onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      log(query);
      final result = context.read<HomeCubit>().searchProduct(query: query);
      log(result.toString());
      setState(() {
        searchProducts = result;
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchProvider = context.watch<SearchProvider>();

    controller.text = searchProvider.valueSearch;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   leading: const SizedBox(),
        //   backgroundColor: Colors.white,
        //   elevation: 1,
        //   flexibleSpace: AppBarWidget(
        //     iconData: Icons.add,
        //     isPop: true,
        //     onClick: () {},
        //   ),
        // ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleTextWidget(
                      title: 'Search',
                      fontSize: 20,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 8, right: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: TextField(
                        controller: controller,
                        onChanged: (String query) {
                          if (_debounce?.isActive ?? false) _debounce?.cancel();
                          _debounce =
                              Timer(const Duration(milliseconds: 500), () {
                            searchProvider.onSearchChanged(query);
                            log(query);
                            final result = context
                                .read<HomeCubit>()
                                .searchProduct(query: query);
                            log(result.toString());
                            setState(() {
                              searchProducts = result;
                            });
                          });
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Products',
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.9),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.text.isNotEmpty
                        ? searchProducts.isNotEmpty
                            ? GridProductsWidget(products: searchProducts)
                            : const Center(
                                child: Text(
                                  'No matching results were found!',
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                        : GridCategoryProducts(
                            products: state.data!.productsOriginal),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
