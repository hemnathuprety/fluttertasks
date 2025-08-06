import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class MethodChannelScreen extends StatefulWidget {
  const MethodChannelScreen({super.key});

  @override
  State<MethodChannelScreen> createState() => _MethodChannelScreenState();
}

class _MethodChannelScreenState extends State<MethodChannelScreen> {
  static const platform = MethodChannel('np.com.hemnath.fluttertasks');
  String _nativeInfo = 'Press button to get info';

  Future<void> _getNativeInfo() async {
    String info;
    try {
      final result = await platform.invokeMethod<String>('getBatteryLevel');
      info = result ?? 'No data received.';
    } on PlatformException catch (e) {
      info = 'Failed to get info: ${e.message}';
    }

    setState(() {
      _nativeInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Native Info via MethodChannel')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(_nativeInfo, style: TextStyle(fontSize: 18)),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: Icon(Icons.battery_charging_full),
              label: Text('Get Battery Info'),
              onPressed: _getNativeInfo,
            ),
          ],
        ),
      ),
    );
  }
}
