import 'package:base_project/infrastructure/configuration/global.configuration.dart';
import 'package:base_project/infrastructure/http/authority_strategy/http_authority.strategy.dart';
import 'package:base_project/infrastructure/http/http.interceptor.dart';

class GGCEAuthorityStrategy extends HttpAuthorityStrategy {
  GGCEAuthorityStrategy()
      : super(authority: GlobalCIATConfiguration.controller.server);

  @override
  void interceptorsInitialize() {
    addInterceptor(HttpContentTypeInterceptor());
  }
}
