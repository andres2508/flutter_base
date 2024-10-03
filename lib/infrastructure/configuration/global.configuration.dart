class GlobalCIATConfiguration {
  // Backend configuration
  final String _server = const String.fromEnvironment('server');

  static final GlobalCIATConfiguration controller =
      GlobalCIATConfiguration._intern();

  GlobalCIATConfiguration._intern();

  factory GlobalCIATConfiguration() {
    return controller;
  }

  get server => _server;
}
