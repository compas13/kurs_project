import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../state/provider_app_theme.dart';

class ItemOfMenu extends StatelessWidget {
  final String title;
  final Widget iconLeft; // иконка слева
  final String path;
  const ItemOfMenu({
    super.key,
    required this.title,
    required this.iconLeft,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
      child: GestureDetector(
        onTap: () {
          context.push(path);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
          child: Container(
            height: 48,
            decoration: BoxDecoration(color: appTheme.colorTheme.inputFieldBackground),
            child: Row(
              children: [
                const SizedBox(width: 16),
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: appTheme.colorTheme.inputFieldIconLeftBackground,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: iconLeft,
                ),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: appTheme.colorTheme.inputFieldData,
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios_rounded, color: appTheme.colorTheme.inputFieldIconRight),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}