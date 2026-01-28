import 'package:catbreeds/core/config/app_config.dart';
import 'package:catbreeds/main.dart';

void main() {
  final config = AppConfig(
    baseUrl: 'https://api.thecatapi.com/v1/breeds',
    appName: 'CatBreeds',
    apiKey:
        'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr',
    environment: AppEnvironment.prod,
  );
  mainCommon(config);
}
