import 'package:candy_puzzle/injector.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/services/theme/my_theme.dart';
import 'package:candy_puzzle/services/utils/lifecycle_manager.dart';
import 'package:candy_puzzle/services/routes/app_routes.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Boxes().init();

  runApp(Injector(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, orientation) {
          return LifecycleManager(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Candy Puzzle',
              themeMode: ThemeMode.light,
              theme: MyTheme().light,
              darkTheme: MyTheme().dark,
              onGenerateRoute: AppRoute.onGenerateRoute,
              navigatorKey: AppRoute.mainNavKey,
            ),
          );
        },
      ),
    );
  }
}
