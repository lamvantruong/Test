class Device {
  final String id;
  final String name;
  final String type; // light, ac, fan, door
  bool isOn;
  double value; 

  Device({
    required this.id,
    required this.name,
    required this.type,
    this.isOn = false,
    this.value = 0.0,
  });
}
