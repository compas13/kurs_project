import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../state/provider_app_state.dart';
import '../state/provider_app_theme.dart';

class ShellAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShellAppBar({super.key});

  @override
  Widget build(BuildContext context) { 
    var appState = context.watch<ProviderAppState>();
    var appTheme = context.watch<ProviderAppTheme>();
    return AppBar(
      centerTitle: true,
      backgroundColor: appTheme.colorTheme.appBarShellBackground,
      title: Text(
        appState.currentTitle.toUpperCase(),
        style: TextStyle(
          color: appTheme.colorTheme.appBarShellTitle,
          fontWeight: FontWeight.w200,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: Icon(Icons.menu, color: appTheme.colorTheme.appBarShellIcons),
            onPressed: () {
              context.push('/menu'); // Меню
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}