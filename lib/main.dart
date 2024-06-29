import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/auth_provider.dart';
import 'app/config_provider.dart';
import 'core/di/dependency_injection.dart';
import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';
import 'core/themes/theme.dart';
import 'core/themes/util.dart';

void main() async {
  setupGetIt();
  runApp(
    ScreenUtilInit(
      minTextAdapt: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_) => ConfigProvider()..loadPreferences()),
          ChangeNotifierProvider(create: (_) => AuthProvider()..loadToken()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final configProvider = Provider.of<ConfigProvider>(context);
    final auth = Provider.of<AuthProvider>(context);
    print(auth.token);
    TextTheme textTheme = createTextTheme(
        context, "IBM Plex Sans Arabic", "IBM Plex Sans Arabic");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: configProvider.locale,
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: configProvider.themeMode,
      title: 'Flutter Demo',
      home:HomePage()
      // home: auth.isGuest ? const LoginScreen() : HomeScreen(),
      // home: auth.isGuest ? HomeScreen() : HomeScreen(),
      // initialRoute: auth.isGuest ? Routes.login : Routes.home,
      // onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final configProvider = Provider.of<ConfigProvider>(context);
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {},
                child: const Text('Fetch Data'),
              ),
              ElevatedButton(
                onPressed: () {
                  // authProvider.login('dummy_token');
                },
                child: const Text('Login'),
              ),
              Text("${authProvider.token}"),
              Text("${authProvider.isGuest}"),
              Text("${configProvider.locale}"),
              Text("${configProvider.themeMode}"),
              ElevatedButton(
                onPressed: () {
                  authProvider.logout();
                },
                child: const Text('Logout'),
              ),
              ElevatedButton(
                onPressed: () {
                  configProvider.setLocale(
                    configProvider.locale == const Locale('ar')
                        ? const Locale('en')
                        : const Locale('ar'),
                  );
                },
                child: const Text('Change Language to Arabic'),
              ),
              ElevatedButton(
                onPressed: () {
                  configProvider.setThemeMode(
                    configProvider.themeMode == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light,
                  );
                },
                child: const Text('Toggle Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
