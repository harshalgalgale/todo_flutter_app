import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../../entities/setting/setting.dart';
import '../../repositories/setting/setting_repository.dart';
import 'package:equatable/equatable.dart';

class ChangeAppThemeMode implements UseCase<void, Params> {
  final SettingRepository settingRepository;

  ChangeAppThemeMode(this.settingRepository);

  @override
  Future<Either<Failure, void>> call(Params params) {
    return settingRepository.changeAppThemeMode(params.appThemeMode);
  }
}

class Params extends Equatable {
  final AppThemeMode appThemeMode;

  Params({required this.appThemeMode});

  @override
  List<Object> get props => [appThemeMode];
}
