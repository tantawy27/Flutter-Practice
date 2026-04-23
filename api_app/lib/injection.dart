import 'package:api_app/my_repo.dart';
import 'package:api_app/web_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:api_app/cubit/my_cubit.dart';



final getIt = GetIt.instance;

void initGetIt() {
getIt.registerLazySingleton<MyCubit>(() => MyCubit (getIt()));
getIt.registerLazySingleton<MyRepo>(() => MyRepo (getIt())); 
getIt.registerLazySingleton<WebServices>(() => WebServices (createAndSetupDio()));  
}

  
Dio createAndSetupDio() {
  Dio dio = Dio();

  dio.options
    ..connectTimeout = const Duration(seconds: 10) 
    ..receiveTimeout = const Duration(seconds: 10);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));
  
  return dio;
}

