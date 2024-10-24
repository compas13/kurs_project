import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../state/provider_app_theme.dart';
import '../widgets/shell_app_bar.dart';
import '../widgets/shell_bottom_bar.dart';

class ShellScreen extends StatelessWidget {
  const ShellScreen({super.key, required this.shell});
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) { 
  	var appTheme = context.watch<ProviderAppTheme>();
    return Scaffold(
      backgroundColor: appTheme.colorTheme.mainAppBackground,
      appBar: const ShellAppBar(),
      bottomNavigationBar: ShellBottomBar(shell: shell),
      body: shell,
    );
  }
}