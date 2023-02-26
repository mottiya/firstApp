import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectionService extends GetxService {
  Future<bool> checkConnection() async {
   final connection = await Connectivity().checkConnectivity();
   return connection == ConnectivityResult.wifi || connection == ConnectivityResult.mobile;
  }
}