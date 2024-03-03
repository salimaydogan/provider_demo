import 'package:flutter/material.dart';

class DataUpdate extends ChangeNotifier {
  String data = "";

  String dataRead() {
    return data;
  }

  dataUpdate(String newData) {
    data = newData;
    notifyListeners();
  }
}
