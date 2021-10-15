import '../../../domain/entities/setting/setting.dart';

class SettingModel extends Setting {
  final AppThemeMode appThemeMode;
  SettingModel({required this.appThemeMode})
      : super(appThemeMode: appThemeMode);

  SettingModel copyWith({AppThemeMode? appThemeMode}) {
    return SettingModel(
      appThemeMode: appThemeMode ?? this.appThemeMode,
    );
  }
}
