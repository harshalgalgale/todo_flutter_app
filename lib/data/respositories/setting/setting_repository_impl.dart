import 'package:dartz/dartz.dart';
import '../../../core/error/exceptions.dart';
import '../../../core/error/failures.dart';
import '../../datasources/setting/setting_local_data_source.dart';
import '../../../domain/entities/setting/setting.dart';
import '../../../domain/repositories/setting/setting_repository.dart';

class SettingRepositoryImpl implements SettingRepository {
  final SettingLocalDataSource settingLocalDataSource;

  SettingRepositoryImpl({required this.settingLocalDataSource});

  @override
  Future<Either<Failure, Setting>> getSetting() async {
    try {
      return Right(await settingLocalDataSource.getSetting());
    } on DataBaseException {
      return Left(DataBaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> changeAppThemeMode(
      AppThemeMode appThemeMode) async {
    try {
      return Right(
          await settingLocalDataSource.changeAppThemeMode(appThemeMode));
    } on DataBaseException {
      return Left(DataBaseFailure());
    }
  }
}
