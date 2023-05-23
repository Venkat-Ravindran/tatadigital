import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';

class UtilityService {
  final cache = GetStorage();

  readBoolean(String keyName) {
    bool readValue = cache.read(keyName) ?? false;
    return readValue;
  }

  readString(String keyName) {
    String readValue = cache.read(keyName) ?? '';
    return readValue;
  }


  write(String keyName, var value) async{
    await cache.write(keyName, value);
  }

  double getDeviceWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

}