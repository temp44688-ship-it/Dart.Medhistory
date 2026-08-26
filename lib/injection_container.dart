import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/consultation/data/datasources/consultation_remote_data_source.dart';
import 'features/consultation/data/repositories/consultation_repository_impl.dart';
import 'features/consultation/domain/repositories/consultation_repository.dart';
import 'features/consultation/domain/usecases/auto_classify_pathology.dart';
import 'features/consultation/domain/usecases/create_consultation.dart';
import 'features/consultation/domain/usecases/delete_consultation.dart';
import 'features/consultation/domain/usecases/get_consultation_by_id.dart';
import 'features/consultation/domain/usecases/get_pathologies.dart';
import 'features/consultation/domain/usecases/get_recent_consultations.dart';
import 'features/consultation/domain/usecases/search_consultations.dart';
import 'features/consultation/domain/usecases/update_consultation.dart';
import 'features/consultation/presentation/bloc/consultation_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  sl.registerLazySingleton(() => Supabase.instance.client);

  // Data sources
  sl.registerLazySingleton<ConsultationRemoteDataSource>(
    () => ConsultationRemoteDataSourceImpl(sl()),
  );

  // Repositories
  sl.registerLazySingleton<ConsultationRepository>(
    () => ConsultationRepositoryImpl(sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GetRecentConsultations(sl()));
  sl.registerLazySingleton(() => GetConsultationById(sl()));
  sl.registerLazySingleton(() => CreateConsultation(sl()));
  sl.registerLazySingleton(() => UpdateConsultation(sl()));
  sl.registerLazySingleton(() => DeleteConsultation(sl()));
  sl.registerLazySingleton(() => SearchConsultations(sl()));
  sl.registerLazySingleton(() => GetPathologies(sl()));
  sl.registerLazySingleton(() => AutoClassifyPathology(sl()));

  // BLoC
  sl.registerFactory(
    () => ConsultationBloc(
      getRecentConsultations: sl(),
      getConsultationById: sl(),
      createConsultation: sl(),
      updateConsultation: sl(),
      deleteConsultation: sl(),
      searchConsultations: sl(),
      getPathologies: sl(),
      autoClassifyPathology: sl(),
    ),
  );
}
