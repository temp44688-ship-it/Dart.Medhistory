class AppConstants {
  const AppConstants._();

  static const supabaseUrl = String.fromEnvironment('SUPABASE_URL');
  static const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  static const consultationsTable = 'consultations';
  static const patientsTable = 'patients';
  static const doctorsTable = 'doctors';
  static const attachmentsBucket = 'medical-attachments';

  static const freeConsultationsLimit = 10;
  static const freeHistoryMonths = 12;
  static const maxAttachmentSizeBytes = 10 * 1024 * 1024;
}
