import 'package:flutter/material.dart';

class ProviderStateManagement with ChangeNotifier {
  List<bool> _isFavorited = List.generate(10, (_) => false);
  List<bool> get isFavorited => _isFavorited ;
  void fav(index) {
    isFavorited[index] = !isFavorited[index];
    notifyListeners();
  }
}
