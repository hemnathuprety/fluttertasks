import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >()
        ?.requestPermissions(alert: true, badge: true, sound: true);

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
          requestSoundPermission: true,
          requestBadgePermission: true,
          requestAlertPermission: true,
        );

    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsIOS,
        );

    await _notificationsPlugin.initialize(initializationSettings);
  }

  Future<void> schedule(TodoDataModel todo) async {
    if (todo.dueDate == null || todo.id == null) return;
    await _notificationsPlugin.zonedSchedule(
      todo.id!,
      'Reminder',
      todo.title,
      tz.TZDateTime.from(
        DateTime.parse(todo.dueDate),
        tz.getLocation("Asia/Kathmandu"),
      ),
      NotificationDetails(
        android: AndroidNotificationDetails('todo_channel', 'Todo Reminders'),
      ),
      androidScheduleMode: AndroidScheduleMode.exact,
    );
  }
}
