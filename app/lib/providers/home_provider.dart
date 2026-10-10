import 'package:flutter/material.dart';
import '../models/device.dart';

class HomeProvider with ChangeNotifier {
  final List<Device> _devices = [
    Device(id: '1', name: 'Đèn Phòng Khách', type: 'light', isOn: false),
    Device(id: '2', name: 'Máy lạnh Phòng Ngủ', type: 'ac', isOn: true, value: 24.0),
    Device(id: '3', name: 'Quạt Bếp', type: 'fan', isOn: false),
    Device(id: '4', name: 'Cửa Chính', type: 'door', isOn: true),
  ];

  List<Device> get devices => _devices;

  void toggleDevice(String id) {
    var device = _devices.firstWhere((d) => d.id == id);
    device.isOn = !device.isOn;
    notifyListeners();
  }

  void updateDeviceValue(String id, double val) {
    var device = _devices.firstWhere((d) => d.id == id);
    device.value = val;
    notifyListeners();
  }
}
