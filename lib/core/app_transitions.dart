import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<dynamic> slideTransitionPage({required GoRouterState state, required Widget child}) {
  return CustomTransitionPage(
    child: child,
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 370),
    fullscreenDialog: true,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0); // Начальная позиция - справа
      const end = Offset.zero; // Конечная позиция - центр
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween.chain(CurveTween(curve: curve)));
      var fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(animation);

      return SlideTransition(
        position: offsetAnimation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: child,
        ),
      );
    },
  );
}