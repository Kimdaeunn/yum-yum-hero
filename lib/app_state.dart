import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _Cart = [];
  List<DocumentReference> get Cart => _Cart;
  set Cart(List<DocumentReference> value) {
    _Cart = value;
  }

  void addToCart(DocumentReference value) {
    Cart.add(value);
  }

  void removeFromCart(DocumentReference value) {
    Cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    Cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    Cart[index] = updateFn(_Cart[index]);
  }

  void insertAtIndexInCart(int index, DocumentReference value) {
    Cart.insert(index, value);
  }
}
