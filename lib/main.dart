import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertasks/shared/config/app_router.dart';
import 'package:fluttertasks/shared/di/injection_container.dart';
import 'package:fluttertasks/shared/notification_service.dart';
import 'package:fluttertasks/shared/themes/color_extensions.dart';
import 'package:fluttertasks/shared/themes/theme.dart';
import 'package:timezone/data/latest_all.dart' as tz;

import 'features/todo/presentation/bloc/todo_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones(); // Add this!
  await NotificationService().init();
  configureDependencies();
  AppTheme.initUiOverlayStyle();
  getIt.registerSingleton<AppRouter>(AppRouter());


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TodoBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Tasks',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
