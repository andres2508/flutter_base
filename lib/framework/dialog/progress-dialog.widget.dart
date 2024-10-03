import 'package:base_project/framework/dialog/dialogs.service.dart';
import 'package:base_project/infrastructure/locator/service.locator.dart';
import 'package:flutter/material.dart';

class ProgressDialogWrapper extends StatelessWidget {
  final WidgetBuilder builder;

  const ProgressDialogWrapper({required this.builder, super.key});

  @override
  Widget build(BuildContext context) {
    serviceLocator<DialogsService>().changeContext(context);
    return builder(context);
  }
}
