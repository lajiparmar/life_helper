import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:life_helper/app_import.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (message.data['click_action'] != 'ticket_details_page') {
  //  showNotificationBadge.value = true;
  }
}


class NotificationService {
  NotificationService._privateConstructor();


  static final NotificationService instance = NotificationService._privateConstructor();


  FirebaseMessaging? firebaseMessaging;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  String msgId = '';


  Future<void> initializeNotification(BuildContext context) async {
    logs('Firebase notification initialized message');
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    firebaseMessaging = FirebaseMessaging.instance;
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    if (context.mounted) {
      // bool notificationAreEnabled = await PermissionHelper.instance.notificationPermissions(context);
      // if (notificationAreEnabled) {
      //   await initializeLocalNotification();
      //   bool isLogin = await getPrefBoolValue(AppPrefConstants.isLogin);
      //   if (isLogin) {
      //     UserRepository userRepository = getIt<UserRepository>();
      //     bool isTokenExpired = await userRepository.checkTokenExpiration(showToastMessage: false);
      //     if (isTokenExpired) {
      //       await NotificationHelper.instance.setFcmToken();
      //     }
      //     logs('isTokenExpired  ---> $isTokenExpired');
      //   }
       // await subscribeTopic();
        FirebaseMessaging.onMessage.listen((RemoteMessage remoteMessage) async {
          showNotification(remoteMessage: remoteMessage);
        });
      }
  }


  Future<void> subscribeTopic() async {
    try {
   //   bool connected = await ConnectivityHelper.instance.isConnectNetworkWithMessage();
   //    if (!connected) {
   //      return;
   //    }
   //    if (AppConfig.shared.flavor == Flavor.prod) {
   //      await FirebaseMessaging.instance.subscribeToTopic(topicProd);
   //    } else {
   //      await FirebaseMessaging.instance.subscribeToTopic(topicDev);
   //    }
    }catch (e) {
      AppLogger.errorLogs('Catch error in subscribeTopic --> ${e.toString()}');
    }
  }


  Future<void> initializeLocalNotification() async {
    AndroidInitializationSettings android = const AndroidInitializationSettings('default_notification_icon');
    DarwinInitializationSettings iOS = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    InitializationSettings platform = InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(
      platform,
      onDidReceiveNotificationResponse: (remoteMessage) async {
        if (remoteMessage.payload != null && remoteMessage.payload!.isNotEmpty) {
          manageNotificationOnTap(jsonDecode(remoteMessage.payload!));
        }
      },
    );


    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage remoteMessage) async {
      msgId = remoteMessage.messageId ?? '';
      manageNotificationOnTap(remoteMessage.data);
    });


    FirebaseMessaging.instance.getInitialMessage().then(
          (value) {
        if (value != null && msgId != value.messageId) {
          if (value.data['click_action'] != 'ticket_details_page') {
          //  showNotificationBadge.value = true;
          }
          msgId = value.messageId ?? '';
          manageNotificationOnTap(value.data);
        }
      },
    );
  }


  void manageNotificationOnTap(Map<String, dynamic> remoteMessage) {
    // String clickAction = remoteMessage['click_action'] ?? '';
    // if (clickAction == 'line_and_station_page') {
    //   String tab = remoteMessage['tab'] ?? '';
    //   logs('tab --> $tab');
    //   // gotoLineAndStationPage(currentTabIndex: tab == 'station' ? 1 : 2);
    //   gotoNotificationPage();
    // } else if (clickAction == 'ticket_details_page') {
    //   gotoTicketDetailsPage(
    //     ticketId: remoteMessage['ticket_no'],
    //   );
    // }
  }


  Future<void> showNotification({required RemoteMessage remoteMessage}) async {
    try{
      // bool isCompleteOnBoarding = await getPrefBoolValue(AppPrefConstants.isCompleteOnBoarding);
      // if (!isCompleteOnBoarding) {
      //   return;
      // }
      AndroidNotificationChannel channel = const AndroidNotificationChannel(
        'CHANNEL ID',
        'CHANNEL NAME',
        importance: Importance.max,
        playSound: true,
        showBadge: true,
      );
      AndroidNotificationDetails androidNotificationDetails = const AndroidNotificationDetails(
        'CHANNEL ID',
        'CHANNEL NAME',
        channelDescription: 'CHANNEL DESCRIPTION',
        importance: Importance.high,
        priority: Priority.high,
        playSound: true,
      );


      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
      DarwinNotificationDetails iosNotificationDetails = const DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );
      NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails, iOS: iosNotificationDetails);

      if (remoteMessage.notification?.title != null && remoteMessage.notification?.body != null) {
        if (remoteMessage.data['click_action'] != 'ticket_details_page') {
        //  showNotificationBadge.value = true;
        }
        await flutterLocalNotificationsPlugin.show(
          0,
          remoteMessage.notification!.title,
          remoteMessage.notification!.body,
          notificationDetails,
          payload: jsonEncode(remoteMessage.data),
        );
      }
    } catch(error,stack){
      logs('Catch exception in showNotification --> ${stack.toString()}');
    }
  }


  Future<void> setFcmToken() async {
    try {
        if (await Permission.notification.isGranted) {
          String? token = await FirebaseMessaging.instance.getToken();
         // await _userRepository.updateFcmToken(token);
      }
    } catch(error){
      logs('Catch exception in setFcmToken --> ${error.toString()}');
    }
  }


  Future<void> deleteFcmToken() async {
    await FirebaseMessaging.instance.deleteToken();
  }
}
