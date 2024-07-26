// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Settings extends _Settings
    with RealmEntity, RealmObjectBase, RealmObject {
  Settings({
    String? serverUrl,
    DeviceInfo? device,
    Set<String> mediaDirectories = const {},
  }) {
    RealmObjectBase.set(this, 'serverUrl', serverUrl);
    RealmObjectBase.set(this, 'device', device);
    RealmObjectBase.set<RealmSet<String>>(
        this, 'mediaDirectories', RealmSet<String>(mediaDirectories));
  }

  Settings._();

  @override
  String? get serverUrl =>
      RealmObjectBase.get<String>(this, 'serverUrl') as String?;
  @override
  set serverUrl(String? value) => RealmObjectBase.set(this, 'serverUrl', value);

  @override
  DeviceInfo? get device =>
      RealmObjectBase.get<DeviceInfo>(this, 'device') as DeviceInfo?;
  @override
  set device(covariant DeviceInfo? value) =>
      RealmObjectBase.set(this, 'device', value);

  @override
  RealmSet<String> get mediaDirectories =>
      RealmObjectBase.get<String>(this, 'mediaDirectories') as RealmSet<String>;
  @override
  set mediaDirectories(covariant RealmSet<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Settings>> get changes =>
      RealmObjectBase.getChanges<Settings>(this);

  @override
  Stream<RealmObjectChanges<Settings>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Settings>(this, keyPaths);

  @override
  Settings freeze() => RealmObjectBase.freezeObject<Settings>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'serverUrl': serverUrl.toEJson(),
      'device': device.toEJson(),
      'mediaDirectories': mediaDirectories.toEJson(),
    };
  }

  static EJsonValue _toEJson(Settings value) => value.toEJson();
  static Settings _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'serverUrl': EJsonValue serverUrl,
        'device': EJsonValue device,
        'mediaDirectories': EJsonValue mediaDirectories,
      } =>
        Settings(
          serverUrl: fromEJson(serverUrl),
          device: fromEJson(device),
          mediaDirectories: fromEJson(mediaDirectories),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Settings._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Settings, 'Settings', [
      SchemaProperty('serverUrl', RealmPropertyType.string, optional: true),
      SchemaProperty('device', RealmPropertyType.object,
          optional: true, linkTarget: 'DeviceInfo'),
      SchemaProperty('mediaDirectories', RealmPropertyType.string,
          collectionType: RealmCollectionType.set),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class DeviceInfo extends _DeviceInfo
    with RealmEntity, RealmObjectBase, RealmObject {
  DeviceInfo(
    String name, {
    String? id,
    String? model,
    Settings? settings,
    DeviceError? lastError,
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'model', model);
    RealmObjectBase.set(this, 'settings', settings);
    RealmObjectBase.set(this, 'lastError', lastError);
  }

  DeviceInfo._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get id => RealmObjectBase.get<String>(this, 'id') as String?;
  @override
  set id(String? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get model => RealmObjectBase.get<String>(this, 'model') as String?;
  @override
  set model(String? value) => RealmObjectBase.set(this, 'model', value);

  @override
  Settings? get settings =>
      RealmObjectBase.get<Settings>(this, 'settings') as Settings?;
  @override
  set settings(covariant Settings? value) =>
      RealmObjectBase.set(this, 'settings', value);

  @override
  DeviceError? get lastError =>
      RealmObjectBase.get<DeviceError>(this, 'lastError') as DeviceError?;
  @override
  set lastError(covariant DeviceError? value) =>
      RealmObjectBase.set(this, 'lastError', value);

  @override
  Stream<RealmObjectChanges<DeviceInfo>> get changes =>
      RealmObjectBase.getChanges<DeviceInfo>(this);

  @override
  Stream<RealmObjectChanges<DeviceInfo>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DeviceInfo>(this, keyPaths);

  @override
  DeviceInfo freeze() => RealmObjectBase.freezeObject<DeviceInfo>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'name': name.toEJson(),
      'id': id.toEJson(),
      'model': model.toEJson(),
      'settings': settings.toEJson(),
      'lastError': lastError.toEJson(),
    };
  }

  static EJsonValue _toEJson(DeviceInfo value) => value.toEJson();
  static DeviceInfo _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'name': EJsonValue name,
        'id': EJsonValue id,
        'model': EJsonValue model,
        'settings': EJsonValue settings,
        'lastError': EJsonValue lastError,
      } =>
        DeviceInfo(
          fromEJson(name),
          id: fromEJson(id),
          model: fromEJson(model),
          settings: fromEJson(settings),
          lastError: fromEJson(lastError),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DeviceInfo._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, DeviceInfo, 'DeviceInfo', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('id', RealmPropertyType.string, optional: true),
      SchemaProperty('model', RealmPropertyType.string, optional: true),
      SchemaProperty('settings', RealmPropertyType.object,
          optional: true, linkTarget: 'Settings'),
      SchemaProperty('lastError', RealmPropertyType.object,
          optional: true, linkTarget: 'DeviceError'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class DeviceError extends _DeviceError
    with RealmEntity, RealmObjectBase, RealmObject {
  DeviceError(
    String errorMessage,
  ) {
    RealmObjectBase.set(this, 'errorMessage', errorMessage);
  }

  DeviceError._();

  @override
  String get errorMessage =>
      RealmObjectBase.get<String>(this, 'errorMessage') as String;
  @override
  set errorMessage(String value) =>
      RealmObjectBase.set(this, 'errorMessage', value);

  @override
  Stream<RealmObjectChanges<DeviceError>> get changes =>
      RealmObjectBase.getChanges<DeviceError>(this);

  @override
  Stream<RealmObjectChanges<DeviceError>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DeviceError>(this, keyPaths);

  @override
  DeviceError freeze() => RealmObjectBase.freezeObject<DeviceError>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'errorMessage': errorMessage.toEJson(),
    };
  }

  static EJsonValue _toEJson(DeviceError value) => value.toEJson();
  static DeviceError _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'errorMessage': EJsonValue errorMessage,
      } =>
        DeviceError(
          fromEJson(errorMessage),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DeviceError._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, DeviceError, 'DeviceError', [
      SchemaProperty('errorMessage', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
