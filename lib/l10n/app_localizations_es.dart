// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'CatBreeds';

  @override
  String get discoverBreeds => 'DESCUBRIR RAZAS';

  @override
  String get searchHint => 'Buscar razas...';

  @override
  String get breedProfile => 'Perfil de Raza';

  @override
  String get temperament => 'Temperamento';

  @override
  String get description => 'Descripción';

  @override
  String get origin => 'Origen';

  @override
  String get intelligence => 'Inteligencia';

  @override
  String get years => 'Años';

  @override
  String get retry => 'Reintentar';

  @override
  String get connectionLost => 'Conexión Perdida';

  @override
  String get connectionLostMessage =>
      'No hay conexión a internet. Por favor verifica tu red.';

  @override
  String get serverError => 'Algo salió mal';

  @override
  String get serverErrorMessage =>
      'El servidor no está disponible. Intenta más tarde.';

  @override
  String get genericError => '¡Ups! Algo salió mal';

  @override
  String moreN(Object count) {
    return '+$count';
  }

  @override
  String get exploreMore => 'Explorar más';
}
