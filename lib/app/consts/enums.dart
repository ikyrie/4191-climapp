enum Environment {
  development(baseUrl: 'https://api.dev.hgbrasil.com/weather', apiKey: String.fromEnvironment("API_KEY")),
  production(baseUrl: 'https://api.hgbrasil.com/weather', apiKey: String.fromEnvironment("API_KEY"));

  final String baseUrl;
  final String apiKey;

  const Environment({ required this.baseUrl, required this.apiKey});
}