import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

enum DevicePlatform {
  web,
  android,
  iOS,
  macOS,
  linux,
  windows,
  fuchsia;

  bool get isWeb => super == web;
  bool get isAndroid => super == android;
  bool get isIOS => super == iOS;
  bool get isMacOS => super == macOS;
  bool get isLinux => super == linux;
  bool get isWindows => super == windows;
  bool get isFuchsia => super == fuchsia;

  bool get isPhone => (isAndroid || isIOS);
  bool get isApple => (isIOS || isMacOS);
  bool get isDesktop => (isWindows || isLinux || isMacOS);
}

class DeviceService {
  static final DeviceService _instance = DeviceService._internal();
  DeviceService._internal();
  factory DeviceService() => _instance;

  BaseDeviceInfo? _deviceData;
  DevicePlatform _platform = DevicePlatform.android;

  DevicePlatform get platform => _platform;
  final _deviceInfoPlugin = DeviceInfoPlugin();
  BaseDeviceInfo? get deviceData => _deviceData;

  Future<void> initPlatformState() async {
    try {
      if (kIsWeb) {
        _platform = DevicePlatform.web;
        _deviceData = await _deviceInfoPlugin.webBrowserInfo;
      } else {
        // _deviceData =
        switch (defaultTargetPlatform) {
          case TargetPlatform.android:
            {
              _platform = DevicePlatform.android;
              _deviceData = await _deviceInfoPlugin.androidInfo;
            }
          case TargetPlatform.iOS:
            {
              _platform = DevicePlatform.iOS;
              _deviceData = await _deviceInfoPlugin.iosInfo;
            }
          case TargetPlatform.macOS:
            {
              _platform = DevicePlatform.macOS;
              _deviceData = await _deviceInfoPlugin.macOsInfo;
            }
          case TargetPlatform.linux:
            {
              _platform = DevicePlatform.linux;
              _deviceData = await _deviceInfoPlugin.linuxInfo;
            }
          case TargetPlatform.windows:
            {
              _platform = DevicePlatform.windows;
              _deviceData = await _deviceInfoPlugin.windowsInfo;
            }
          case TargetPlatform.fuchsia:
            {
              _platform = DevicePlatform.fuchsia;
            }
        }
      }
    } catch (e) {
      debugPrint('Error on DeviceService>initPlatformState: $e');
    }
  }
}
