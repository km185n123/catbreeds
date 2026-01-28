import 'package:catbreeds/core/config/app_config.dart';
import 'package:catbreeds/main.dart';

void main() {
  final config = AppConfig(
    baseUrl: 'https://api.thecatapi.com/v1',
    appName: 'CatBreeds Dev',
    apiKey:
        'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr',
    imageBaseUrl: 'https://cdn2.thecatapi.com/images/',
    environment: AppEnvironment.dev,
  );
  mainCommon(config);
}
