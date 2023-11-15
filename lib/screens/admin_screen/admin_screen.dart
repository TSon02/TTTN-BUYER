import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:trendy_treasures/screens/addProduct_screen/cubit/add_product_cubit.dart';
import 'package:trendy_treasures/screens/admin_screen/widgets/admin_feature_widgets.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  static BlocProvider<AddProductCubit> provider() {
    return BlocProvider(
      create: (context) {
        return AddProductCubit();
      },
      child: const AdminScreen(),
    );
  }

  @override
  State<AdminScreen> createState() => AdminScreenState();
}

class AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Admin',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            AdminFeatureWidgets(),
          ],
        ),
      ),
    );
  }
}
