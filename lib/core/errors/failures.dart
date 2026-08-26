sealed class Failure {
  const Failure(this.message);
  final String message;
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Une erreur serveur est survenue.']);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Une erreur de cache est survenue.']);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Connexion réseau indisponible.']);
}

class ValidationFailure extends Failure {
  const ValidationFailure([super.message = 'Les données sont invalides.']);
}
