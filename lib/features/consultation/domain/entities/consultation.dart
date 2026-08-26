class Consultation {
  const Consultation({
    required this.id,
    required this.patientId,
    required this.title,
    required this.date,
  });

  final String id;
  final String patientId;
  final String title;
  final DateTime date;
}
