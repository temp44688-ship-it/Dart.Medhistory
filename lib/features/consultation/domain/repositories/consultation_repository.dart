import '../../domain/entities/consultation.dart';

abstract interface class ConsultationRepository {
  Future<List<Consultation>> getConsultations(String patientId);
}
