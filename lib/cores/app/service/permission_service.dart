import 'package:life_helper/app_import.dart';

mixin PermissionService {
  static Future<bool> notificationPermission(BuildContext context) async {
    print('notifiation pemrission is called');
    PermissionStatus status = await Permission.notification.status;
    if (status.isGranted) {
      return true;
    }
    if (status.isDenied) {
      print('notifiation pemrission is called inside denied');

      await Permission.notification.request();
    }
    if (status.isPermanentlyDenied) {
      await openAppSettings();
    }

    return false;
  }
}
