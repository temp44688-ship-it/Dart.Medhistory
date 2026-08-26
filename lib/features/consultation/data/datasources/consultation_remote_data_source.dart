import 'package:supabase_flutter/supabase_flutter.dart';

import '../../domain/entities/consultation.dart';

class ConsultationRemoteDataSource {
  ConsultationRemoteDataSource(this._client);

  final SupabaseClient _client;

  Future<List<Consultation>> getConsultations(String patientId) async {
    final rows = await _client
        .from('consultations')
        .select('id, patient_id, title, consultation_date')
        .eq('patient_id', patientId)
        .order('consultation_date', ascending: false);

    return rows
        .map(
          (row) => Consultation(
            id: row['id'] as String,
            patientId: row['patient_id'] as String,
            title: row['title'] as String,
            date: DateTime.parse(row['consultation_date'] as String),
          ),
        )
        .toList();
  }
}
