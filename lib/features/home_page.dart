import 'package:flutter/material.dart';
import 'package:fluttertasks/shared/themes/color_extensions.dart';
import 'package:fluttertasks/shared/widgets/app_filled_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppFilledButton(
              color: AppColors.primary,
              title: "To-Do",
              icon: Icons.map,
              onPressed: () {

              },
            ),
            AppFilledButton(
              color: AppColors.primary,
              title: "Dynamic Form",
              icon: Icons.map,
              onPressed: () {

              },
            ),
            AppFilledButton(
              color: AppColors.primary,
              title: "Mini E-Commerce",
              icon: Icons.map,
              onPressed: () {

              },
            ),
            AppFilledButton(
              color: AppColors.primary,
              title: "Method Channel",
              icon: Icons.map,
              onPressed: () {

              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
