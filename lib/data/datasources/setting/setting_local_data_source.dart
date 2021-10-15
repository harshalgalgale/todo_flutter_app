import '../../models/setting/setting_model.dart';
import '../../../domain/entities/setting/setting.dart';

abstract class SettingLocalDataSource {
  ///Throws [DataBaseException] if no data found
  Future<Setting> getSetting();

  Future<void> changeAppThemeMode(AppThemeMode appThemeMode);
}

class SettingLocalDataSourceImpl implements SettingLocalDataSource {
  SettingLocalDataSourceImpl();

  SettingModel setting = SettingModel(appThemeMode: AppThemeMode.light);

  @override
  Future<Setting> getSetting() {
    return Future.delayed(const Duration(seconds: 1), () => setting);
  }

  @override
  Future<void> changeAppThemeMode(AppThemeMode appThemeMode) {
    return Future.delayed(const Duration(seconds: 1), () {
      setting = setting.copyWith(appThemeMode: appThemeMode);
    });
  }
}
