import 'package:flutter/material.dart';

final ThemeData appTheme = _buildAppTheme();

class AppTheme {
  ThemeData get themeData {
    return _buildAppTheme();
  }
}

abstract class BaseTheme {
  late Color actionInactive;
  late ThemeData themeData;
}

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
          primary: Color(0xFF20D994),
          onPrimary: Colors.white,
          secondary: Color(0xFFF57C00),
          onSecondary: Colors.white),
      textTheme: _buildAppTextTheme(base.textTheme),
      buttonTheme:
          base.buttonTheme.copyWith(height: 50, padding: EdgeInsets.all(0)),
      outlinedButtonTheme:
          OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
      appBarTheme: base.appBarTheme.copyWith(
        backwardsCompatibility: false,
      ));
}

TextTheme _buildAppTextTheme(TextTheme base) {
  return base.apply(
    fontFamily: 'Quicksand',
  );
}

Theme themeOverlayInverse(BuildContext context, {required Widget child}) {
  return Theme(
    data: themeInverse(context),
    child: child,
  );
}

ThemeData themeInverse(BuildContext context) {
  final theme = Theme.of(context);
  return theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(
      primary: theme.colorScheme.onPrimary,
      onPrimary: theme.colorScheme.primary,
    ),
    unselectedWidgetColor: theme.colorScheme.surface.withAlpha(180),
  );
}

Theme themeOverlayOutlinedButton(BuildContext context,
    {ButtonThemeOverlay overlay = ButtonThemeOverlay.primary,
    required Widget child}) {
  final theme = Theme.of(context);
  final Color primary;
  switch (overlay) {
    case ButtonThemeOverlay.primary:
      primary = theme.colorScheme.primary;
      break;
    case ButtonThemeOverlay.secondary:
      primary = theme.colorScheme.secondary;
      break;
    case ButtonThemeOverlay.tertiary:
      primary = Color.fromARGB(255, 157, 157, 157);
      break;
  }

  return Theme(
    data: Theme.of(context).copyWith(
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: primary,
        ),
      ),
    ),
    child: child,
  );
}

enum ButtonThemeOverlay { primary, secondary, tertiary }
