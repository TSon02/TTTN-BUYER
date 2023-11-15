import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures/constants/enum/status_type.dart';
import 'package:trendy_treasures/screens/categories_screen/widget/category_item_widget.dart';
import 'package:trendy_treasures/screens/home_screen/cubit/home_cubit.dart';
import 'package:trendy_treasures/utils/list.dart';
import 'package:trendy_treasures/widgets/loader.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  static BlocProvider<HomeCubit> provider() {
    return BlocProvider(
      create: (context) {
        return HomeCubit();
      },
      child: const CategoriesScreen(),
    );
  }

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<HomeCubit>().getAllProducts(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          // log(state.data!.productsOriginal.length.toString());

          switch (state.data!.status) {
            case StatusType.loading:
              return const Loader();
            case StatusType.loaded:
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Categories',
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
                        height: 12,
                      ),
                      for (int i = 0; i < productCategories.length; i++)
                        CategoryItemWidget(
                          index: i + 1,
                          category: productCategories[i],
                          products: state.data!.products.where((product) {
                            return product.category ==
                                productCategories[i]['type'];
                          }).toList(),
                        ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              );
            default:
              return const Loader();
          }
        },
      ),
    );
  }
}
