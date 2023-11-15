import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  String _valueSearch = '';

  String get valueSearch => _valueSearch;

  // Timer? _debounce;

  void onSearchChanged(String query) {
    _valueSearch = query;
    notifyListeners();
  }

  // void onSearchChanged({required String query, required BuildContext context}) {
  //   if (_debounce?.isActive ?? false) _debounce?.cancel();
  //   _debounce = Timer(const Duration(milliseconds: 500), () {
  //     _valueSearch = query;
  //     context.read<HomeCubit>().searchProduct(query: query);
  //     notifyListeners();
  //   });
  // }
}
