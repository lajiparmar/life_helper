import 'package:flutter/material.dart';
import 'package:life_helper/cores/app/service/notification_service.dart';
import 'package:life_helper/cores/app/service/permission_service.dart';
import 'package:life_helper/cores/app/widget/app_text.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    print('initstate is called or not');
    super.initState();
    notificationInitialization();
  }

  void notificationInitialization() async {
    print('is not ifcaito nintlization is called');
    if (context.mounted) {
      await PermissionService.notificationPermission(context);
    }
    if (context.mounted) {
      print('seocnd is called or not');
      await NotificationService.instance.initializeNotification(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: AppText('hello')),
      ),
    );
  }
}
