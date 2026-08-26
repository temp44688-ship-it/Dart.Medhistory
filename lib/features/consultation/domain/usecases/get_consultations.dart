import '../entities/consultation.dart';
import '../repositories/consultation_repository.dart';

class GetConsultations {
  const GetConsultations(this.repository);

  final ConsultationRepository repository;

  Future<List<Consultation>> call(String patientId) => repository.getConsultations(patientId);
}
