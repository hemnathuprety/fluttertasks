import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller = window.rootViewController as! FlutterViewController
    let batteryChannel = FlutterMethodChannel(name: "np.com.hemnath.fluttertasks",
                                              binaryMessenger: controller.binaryMessenger)

    batteryChannel.setMethodCallHandler { (call, result) in
      if call.method == "getBatteryLevel" {
        let device = UIDevice.current
        device.isBatteryMonitoringEnabled = true
        if device.batteryState == UIDevice.BatteryState.unknown {
          result(FlutterError(code: "UNAVAILABLE",
                              message: "Battery info unavailable",
                              details: nil))
        } else {
          result("Battery level is \(Int(device.batteryLevel * 100))%")
        }
      } else {
        result(FlutterMethodNotImplemented)
      }
    }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
