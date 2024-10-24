import 'package:flutter/material.dart';

class ProviderAppState extends ChangeNotifier {
  String currenPath = '/outcome';
  String currenParent = '';
  String currentTitle = 'Продажи';

  void setCurrenPath(int indexBranch) {
    List branches = [
      '/sales',
      '/purchases',
      '/reports',
      '/settings',
    ];

    currenPath = branches[indexBranch];
    notifyListeners();
  } 
  
  void setCurrentTitle(String value) {
    currentTitle = value;
    notifyListeners();
  }
}