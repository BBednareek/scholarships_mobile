// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:scholarships/features/favorites/presentation/favorites_bloc.dart'
    as _i33;
import 'package:scholarships/features/override_theme/presentation/cubit/override_theme_cubit.dart'
    as _i768;
import 'package:scholarships/features/scholarships/data/datasource/scholarships_datasource.dart'
    as _i514;
import 'package:scholarships/features/scholarships/data/repository/scholarships_repository.dart'
    as _i1;
import 'package:scholarships/features/scholarships/domain/usecases/scholarships_usecase.dart'
    as _i90;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i33.FavoritesBloc>(() => _i33.FavoritesBloc());
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i768.OverrideThemeCubit>(
      () => _i768.OverrideThemeCubit(),
    );
    gh.lazySingleton<_i514.ScholarshipsDatasource>(
      () => _i514.ScholarshipsDatasourceImpl(
        firestore: gh<_i974.FirebaseFirestore>(),
      ),
    );
    gh.lazySingleton<_i1.ScholarshipsRepository>(
      () => _i1.ScholarshipsRepositoryImpl(
        scholarshipsDatasource: gh<_i514.ScholarshipsDatasource>(),
      ),
    );
    gh.lazySingleton<_i90.ScholarshipsUsecase>(
      () => _i90.ScholarshipsUsecase(
        scholarshipsRepository: gh<_i1.ScholarshipsRepository>(),
      ),
    );
    return this;
  }
}

class _$FirebaseModule extends _i514.FirebaseModule {}
