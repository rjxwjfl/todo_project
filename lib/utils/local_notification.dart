import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  LocalNotification._();

  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static initialize() async {
    AndroidInitializationSettings androidInitializationSettings = const AndroidInitializationSettings('mipmap/ic_launcher'); // App icon position

    DarwinInitializationSettings iOSInitializationSettings = const DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings, iOS: iOSInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static void requestPermission() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static Future<void> sampleNotification() async {
    const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      'channel id',
      'channel name',
      channelDescription: 'channel description',
      importance: Importance.max,
      priority: Priority.max,
      showWhen: true, // Notification output time.
    );

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails,
      iOS: DarwinNotificationDetails(badgeNumber: 1),
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'plain title',
      'plain body',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }
}
