import '../../domain/entities/consultation.dart';
import '../../domain/repositories/consultation_repository.dart';
import '../datasources/consultation_remote_data_source.dart';

class ConsultationRepositoryImpl implements ConsultationRepository {
  ConsultationRepositoryImpl(this.remoteDataSource);

  final ConsultationRemoteDataSource remoteDataSource;

  @override
  Future<List<Consultation>> getConsultations(String patientId) {
    return remoteDataSource.getConsultations(patientId);
  }
}
