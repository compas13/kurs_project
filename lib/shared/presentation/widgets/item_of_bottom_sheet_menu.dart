import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../data/datasources/set_field_from_inn.dart';
import '../state/provider_app_theme.dart';

class ItemOfBottomSheetMenu extends StatelessWidget {
  final dynamic state;
  final String title;
  final String type; //setFieldsFromINN
  const ItemOfBottomSheetMenu({
    super.key,
    required this.state,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();
    var inn = state.getField('innTextController');
      
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
      child: GestureDetector(
        onTap: () {
          if (type == 'setFieldsFromINN' && inn != null) {
            setFieldsFromINN(inn.text, state);
            context.pop();
          } else {
            context.pop();
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
          child: Container(
            height: 48,
            decoration: BoxDecoration(color: appTheme.colorTheme.inputFieldBackground),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: appTheme.colorTheme.inputFieldData,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}