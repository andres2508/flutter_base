import 'package:base_project/app.dart';
import 'package:base_project/framework/router/mubon.module.dart';
import 'package:base_project/infrastructure/locator/service.locator.dart';
import 'package:flutter/material.dart';

List<CIATModule> modules = [];

void main() {
  setupServiceLocator();
  runApp(CIATMobileApp());
}
