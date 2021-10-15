import 'package:dartz/dartz.dart';
import 'package:done_it/core/error/failures.dart';
import 'package:done_it/domain/entities/setting/setting.dart';

abstract class SettingRepository {
  Future<Either<Failure, Setting>> getSetting();

  Future<Either<Failure, void>> changeAppThemeMode(AppThemeMode appThemeMode);
}
