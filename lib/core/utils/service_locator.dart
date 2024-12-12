import 'package:chatter_chat_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<ApiService>(ApiService(dio: getIt.get<Dio>()));
}
