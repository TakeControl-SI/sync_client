/*
	Copyright 2023 Take Control - Software & Infrastructure

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sync_client/storage/schema.dart';

export 'schema.dart';

const dataFilename = "deviceSettings.json";
late DeviceSettings currentDeviceSettings;

Future<DeviceSettings> updateCurrentDevice(
    DeviceSettings deviceSettings) async {
  final deviceInfoPlugin = DeviceInfoPlugin();
  final deviceInfo = await deviceInfoPlugin.deviceInfo;

  String? deviceName = deviceInfo.data["deviceId"];
  deviceName ??= deviceInfo.data["id"];
  deviceName ??=
      (deviceInfo.data["model"] ?? "") + (deviceInfo.data["systemGUID"] ?? "");
  deviceName ??= "unknown";
  deviceSettings.name = deviceName;
  deviceSettings.id = deviceInfo.data["id"];
  deviceSettings.model = deviceInfo.data["model"];
  return deviceSettings;
}

Future<void> loadDeviceSettings() async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  File jsonFile = File("${appDocDir.path}/$dataFilename");
  if (!await jsonFile.exists() || jsonFile.readAsStringSync().isEmpty) {
    ByteData realmBytes = await rootBundle.load("data/$dataFilename");
    await jsonFile.writeAsBytes(
      realmBytes.buffer
          .asUint8List(realmBytes.offsetInBytes, realmBytes.lengthInBytes),
      mode: FileMode.write,
    );
    final jsonAsString = await jsonFile.readAsString();
    final deviceSettings = jsonAsString.isNotEmpty
        ? DeviceSettings.fromJson(jsonDecode(jsonAsString))
        : DeviceSettings("");
    currentDeviceSettings = await updateCurrentDevice(deviceSettings);
    jsonFile.writeAsStringSync(jsonEncode(currentDeviceSettings.toJson()));
  }
  final jsonAsString = jsonFile.readAsStringSync();
  currentDeviceSettings = DeviceSettings.fromJson(jsonDecode(jsonAsString));
}

void saveDeviceSettings(DeviceSettings deviceSettings) async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  File jsonFile = File("${appDocDir.path}/$dataFilename");
  jsonFile.writeAsStringSync(jsonEncode(deviceSettings.toJson()));
}
