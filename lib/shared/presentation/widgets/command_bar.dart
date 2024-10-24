import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../../shared/presentation/state/provider_app_theme.dart';

class CommandBar extends StatelessWidget {
  final String title;
  final String pathNewElement;
  final String nameModel;
  final dynamic model;

  const CommandBar({super.key, required this.title, required this.pathNewElement, required this.nameModel, required this.model});

  @override
  Widget build(BuildContext context) {
    var appTheme = context.watch<ProviderAppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 1),
      child: Container(
        height: 48,
        decoration: BoxDecoration(color: appTheme.colorTheme.inputFieldBackground),
        child: Stack(
          children: [
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: appTheme.colorTheme.inputFieldIconLeft,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      pathNewElement,
                      extra: {
                        nameModel: model,
                      },
                    );
                  },
                  child: Center(child: Icon(Icons.add, color: appTheme.colorTheme.inputFieldIconLeft)),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}