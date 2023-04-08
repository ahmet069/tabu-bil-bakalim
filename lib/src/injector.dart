import 'package:get_it/get_it.dart';
import 'data/datasources/local/tabo/tabu_local_data_source.dart';
import 'data/repositories/tabu_repository_impl.dart';
import 'domain/repository/tabu_repository.dart';
import 'domain/usecase/tabu_usecase.dart';
import 'presentation/bloc/game/game_bloc.dart';

final injector = GetIt.instance;

Future<void> init() async {
  injector
    //* DATA SOURCES
    ..registerLazySingleton<TabuLocalDataSource>(() => TabuLocalDataSourceImpl())

    //* REPOSITORIES
    // ignore: cascade_invocations
    ..registerLazySingleton<TabuRepository>(() => TabuRepositoryImpl(injector()))

    //* USECASE
    ..registerLazySingleton<TabuUsecase>(() => TabuUsecase(injector()))

    //* BLOC
    ..registerFactory(() => GameBloc(injector()));
}
