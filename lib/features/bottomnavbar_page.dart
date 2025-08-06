import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertasks/shared/config/app_router.dart';

@RoutePage()
class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _selectedIndex = 0;
  late TabsRouter tabsRouter;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        TodoRoute(),
        DynamicFormRoute(),
        EcommerceRoute(),
        MethodChannelRoute(),
      ],
      builder: (context, child) {
        tabsRouter = context.tabsRouter;
        _selectedIndex = tabsRouter.activeIndex;
        return Scaffold(
          body: child,
          extendBody: true,
          bottomNavigationBar: BottomAppBar(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: 5.0,
            child: SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildBottomNavigationItem("To-Do", Icons.add_task, 0),
                  _buildBottomNavigationItem("Dynamic Form",Icons.dynamic_feed, 1), // Space for FloatingActionButton
                  _buildBottomNavigationItem("Mini E-Commerce",Icons.sell, 2),
                  _buildBottomNavigationItem("Method Channel",Icons.wifi_channel, 3),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigationItem(String label,IconData icon, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
