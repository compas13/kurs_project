import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'item_of_shell_bottom_bar.dart';

class ShellBottomBar extends StatelessWidget {
  final StatefulNavigationShell shell;
  const ShellBottomBar({
    super.key,
    required this.shell,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ItemOfShellBottomBar(title: 'Продажи', active: shell.currentIndex == 0 ? true : false, indexBranch: 0, shell: shell),
            ItemOfShellBottomBar(title: 'Закупки', active: shell.currentIndex == 1 ? true : false, indexBranch: 1, shell: shell),
            ItemOfShellBottomBar(title: 'Отчеты', active: shell.currentIndex == 2 ? true : false, indexBranch: 2, shell: shell),
            ItemOfShellBottomBar(title: 'Настройки', active: shell.currentIndex == 3 ? true : false, indexBranch: 3, shell: shell),
          ],
        ),
      ),
    );
  }
}
