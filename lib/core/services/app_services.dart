import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppServices extends GetxService {
  late SharedPreferences sharedPrefernces;

  // Future function provided by GetxService
  Future<AppServices> init() async {
    sharedPrefernces = await SharedPreferences.getInstance();
    return this;
  }

  static initializeServices() async {
    await Get.putAsync(() => AppServices().init());
  }
}
