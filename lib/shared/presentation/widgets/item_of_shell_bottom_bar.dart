import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../state/provider_app_state.dart';
import '../state/provider_app_theme.dart';

class ItemOfShellBottomBar extends StatelessWidget {
  final String title;
  final bool active;
  final int indexBranch;
  final StatefulNavigationShell shell;
  const ItemOfShellBottomBar({
    super.key,
    required this.title,
    required this.active,
    required this.indexBranch,
    required this.shell,
  });

  @override
  Widget build(BuildContext context) {
    var providerAppState = context.read<ProviderAppState>();
    var appTheme = context.watch<ProviderAppTheme>();
    return GestureDetector(
      onTap: () {
        providerAppState.setCurrenPath(indexBranch);
        providerAppState.setCurrentTitle(title);
        shell.goBranch(indexBranch);
      },
      child: Container(
        height: 50,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
              fontSize: 13,
              color: active ? appTheme.colorTheme.bottomBarTextActive : appTheme.colorTheme.bottomBarTextNotActive,
            ),
          ),
        ),
      ),
    );
  }
}
