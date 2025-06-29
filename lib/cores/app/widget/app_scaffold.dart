import 'package:flutter/services.dart';
import 'package:life_helper/app_import.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar; // Change type to PreferredSizeWidget
  final Color? backgroundColor;

  const AppScaffold({
    required this.body, super.key,
    this.appBar,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: appBar, // It now accepts any widget implementing PreferredSizeWidget
        body: body,
        backgroundColor: backgroundColor ?? ColorConstant.colorWhite,
      ),
    );
  }
}
