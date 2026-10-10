import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/device.dart';
import '../providers/home_provider.dart';

class DeviceCard extends StatelessWidget {
  final Device device;
  const DeviceCard({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              device.type == 'light' ? Icons.lightbulb :
              device.type == 'ac' ? Icons.ac_unit :
              device.type == 'fan' ? Icons.mode_fan_off : Icons.door_front_door,
              size: 48,
              color: device.isOn ? Colors.blue : Colors.grey,
            ),
            Text(device.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Switch(
              value: device.isOn,
              onChanged: (val) {
                Provider.of<HomeProvider>(context, listen: false).toggleDevice(device.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
