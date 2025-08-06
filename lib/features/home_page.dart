import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertasks/shared/config/app_router.dart';
import 'package:fluttertasks/shared/themes/color_extensions.dart';
import 'package:fluttertasks/shared/widgets/app_filled_button.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppFilledButton(
                color: AppColors.primary,
                title: "To-Do",
                icon: Icons.map,
                onPressed: () {
                  context.router.push(const TodoRoute());
                },
              ),
              SizedBox(height: 48,),
              AppFilledButton(
                color: AppColors.primary,
                title: "Dynamic Form",
                icon: Icons.map,
                onPressed: () {
                  context.router.push(const DynamicFormRoute());
                },
              ),
              SizedBox(height: 48,),
              AppFilledButton(
                color: AppColors.primary,
                title: "Mini E-Commerce",
                icon: Icons.map,
                onPressed: () {
                  context.router.push(const EcommerceRoute());
                },
              ),
              SizedBox(height: 48,),
              AppFilledButton(
                color: AppColors.primary,
                title: "Method Channel",
                icon: Icons.map,
                onPressed: () {
                  context.router.push(const MethodChannelRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
