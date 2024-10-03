import 'package:base_project/framework/provider/view.model.consumer.dart';
import 'package:base_project/framework/router/router.builder.dart';
import 'package:base_project/infrastructure/localization/localization.view.model.dart';
import 'package:base_project/styles/responsive.provider.dart';
import 'package:base_project/styles/theme.style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CIATMobileApp extends StatelessWidget {
  final GoRouter router = CIATRouterBuilder.initialize().build();

  CIATMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        ResponsiveProvider.instance.validate(constraints);
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => CIATLocalizationViewModel()),
          ],
          child: ViewModelConsumer<CIATLocalizationViewModel>(
            builder: (_, model) {
              return MaterialApp.router(
                title: 'CIAT',
                debugShowCheckedModeBanner: false,
                theme: CIATMaterialTheme.light,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                routeInformationProvider: router.routeInformationProvider,
                routeInformationParser: router.routeInformationParser,
                routerDelegate: router.routerDelegate,
                locale: model.current,
              );
            },
          ),
        );
      },
    );
  }
}
