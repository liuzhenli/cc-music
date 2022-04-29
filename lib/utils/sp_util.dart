import 'package:get_storage/get_storage.dart';

class SpUti {
  static dynamic read(String key) {
    GetStorage box = GetStorage();
    return box.read(key);
  }

  static write(String key, dynamic value) {
    GetStorage box = GetStorage();
    box.write(key, value);
  }
}
