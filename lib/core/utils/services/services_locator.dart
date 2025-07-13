import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../network/local/hive_crud_manager.dart';
import '../api/api_consumer.dart';
import '../api/dio_consumer.dart';
import '../api/endpoint.dart';

final sl = GetIt.instance;
void setup() {
  // Dio instance registration
  sl.registerLazySingleton<Dio>(() => Dio(BaseOptions(baseUrl: EndPoint.baseUrl))
    ..interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ))
  );

  // Register DioConsumer
  sl.registerLazySingleton<DioConsumer>(() => DioConsumer(dio: sl<Dio>()));
  sl.registerLazySingleton<ApiConsumer>(() => sl<DioConsumer>());

  // Registering login
  // sl.registerLazySingleton<Loginrepo>(() => LoginRepoImp(dioConsumer: sl<DioConsumer>()));
  // sl.registerFactory<LoginViewCubit>(() => LoginViewCubit(sl<Loginrepo>()));
  // sl.registerFactory<RegisterViewCubit>(() => RegisterViewCubit(sl<Loginrepo>()));

  // Registering home repo


  // Local DB (Hive) Registration with instance names

}
