enum AppEnvironment { dev, staging, prod }

class AppConfig {
  final String baseUrl;
  final String appName;
  final String apiKey;
  final AppEnvironment environment;

  AppConfig({
    required this.baseUrl,
    required this.appName,
    required this.apiKey,
    required this.environment,
  });
}
