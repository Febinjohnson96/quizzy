import 'package:get_it/get_it.dart';
import 'package:quizzy/utils/app_logger.dart';

final injector = GetIt.instance;

Future<void> initInjector() async {
  AppLogger.infolog('Initializing Injector');
}
