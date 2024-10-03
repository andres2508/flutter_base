import 'package:base_project/framework/dialog/dialogs.service.dart';
import 'package:base_project/framework/messages/messages.service.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // Infrastructure Services
  serviceLocator.registerSingleton(MessagesService());
  serviceLocator.registerSingleton(DialogsService());
}
