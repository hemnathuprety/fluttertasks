import 'package:auto_route/auto_route.dart';
import 'package:fluttertasks/features/bottomnavbar_page.dart';
import 'package:fluttertasks/features/dynamic_form/presentation/screen/dynamic_form.dart';
import 'package:fluttertasks/features/ecommerce/presentation/screen/ecommerce.dart';
import 'package:fluttertasks/features/method_channel/presentation/screen/method_channel.dart';
import 'package:fluttertasks/features/todo/presentation/screen/todo_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: BottomNavBarRoute.page,
      initial: false,
      children: [
        AutoRoute(path: 'TodoRoute', page: TodoRoute.page, initial: true),
        AutoRoute(path: 'DynamicFormRoute', page: DynamicFormRoute.page),
        AutoRoute(path: 'EcommerceRoute', page: EcommerceRoute.page),
        AutoRoute(path: 'MethodChannelRoute', page: MethodChannelRoute.page),
      ],
    ),
  ];
}
