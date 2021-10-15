import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import '../../entities/setting/setting.dart';

abstract class SettingRepository {
  Future<Either<Failure, Setting>> getSetting();

  Future<Either<Failure, void>> changeAppThemeMode(AppThemeMode appThemeMode);
}
