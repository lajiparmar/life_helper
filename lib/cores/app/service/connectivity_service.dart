import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:life_helper/app_import.dart';

mixin ConnectivityService {
  static bool isConnected = false;
  static StreamSubscription? listen;

  static Future<void> listenToConnectivity() async {
    if (listen != null) {
      listen?.cancel();
    }
    listen = InternetConnection().onStatusChange.listen((connection) async {
      if (connection == InternetStatus.connected) {
        isConnected = true;
     //   dismissNoInternetDialog();
      } else if (connection == InternetStatus.disconnected) {
        //showNoInternetConnectionDialog();
        isConnected = false;
      }
    });
  }


  // static void dismissNoInternetDialog() {
  //   if (isNoInternetDialogShowing) {
  //     Get.back();
  //   }
  //   isNoInternetDialogShowing = false;
  // }
}
