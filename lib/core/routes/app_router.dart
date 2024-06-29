import 'package:flutter/material.dart';
import 'routes.dart';

enum SlideDirection { top, bottom, left, right, none }

// The to shortcut [MaterialPageRoute]
MaterialPageRoute materialPageRoute(Widget screen) {
  return MaterialPageRoute(builder: (_) => screen);
}

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.onBoarding:
      //   return materialPageRoute(const OnBoardingScreen());


      default:
        return materialPageRoute(
          Scaffold(
            body: Center(
              child: Text('Unknown Route: ${settings.name}'),
            ),
          ),
        );
    }
  }

  static Route createPageRoute({
    required Widget page,
    required SlideDirection slideDirection,
  }) {
    Offset beginOffset = _getBeginOffset(slideDirection);
    Offset endOffset = Offset.zero;
    return PageRouteBuilder(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) =>
          page,
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        var tween = Tween(begin: beginOffset, end: endOffset)
            .chain(CurveTween(curve: Curves.easeInOut));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  static Offset _getBeginOffset(SlideDirection slideDirection) {
    switch (slideDirection) {
      case SlideDirection.top:
        return const Offset(0.0, -1.0);
      case SlideDirection.bottom:
        return const Offset(0.0, 1.0);
      case SlideDirection.left:
        return const Offset(-1.0, 0.0);
      case SlideDirection.right:
        return const Offset(1.0, 0.0);
      case SlideDirection.none:
        return Offset.zero; // No offset for 'none'
    }
  }
}
