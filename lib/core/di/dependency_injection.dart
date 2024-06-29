import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // // getIt.registerLazySingleton<ApiRequest>(() => ApiRequest());
  // getIt.registerSingleton<ApiRequest>(ApiRequest());
  //
  // // login
  // getIt.registerLazySingleton<AuthService>(() => AuthService(getIt()));
  // getIt.registerSingleton<LoginProvider>(LoginProvider(getIt<AuthService>()));
  // getIt.registerSingleton<RegisterProvider>(
  //     RegisterProvider(getIt<AuthService>()));
  // getIt.registerSingleton<ForgetPasswordProvider>(
  //     ForgetPasswordProvider(getIt<AuthService>()));
  // getIt.registerSingleton<OtpScreenProvider>(
  //     OtpScreenProvider(getIt<AuthService>()));
  // getIt.registerSingleton<SignUpVerifcationProvider>(
  //     SignUpVerifcationProvider(getIt<AuthService>()));
  // getIt.registerFactory<LoginProvider>(() => LoginProvider(getIt()));
}
