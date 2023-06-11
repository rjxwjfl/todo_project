import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:todo_project/riverpod/main_route_navigator/main_route_navigator.dart';
import 'package:todo_project/utils/local_notification.dart';
import 'package:todo_project/utils/scroll_glow_remover.dart';
import 'package:todo_project/views/navi_home.dart';

final mainRoute = ChangeNotifierProvider((ref) => MainRouteNavigator());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotification.initialize();
  await initializeDateFormatting();
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((value) => runApp(const ProviderScope(child: AppInit())));
}

class AppInit extends StatelessWidget {
  const AppInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      theme: ThemeData(fontFamilyFallback: const ["QuickSand", "NotoSans"]),
      title: "ToDo Giver",
      scrollBehavior: ScrollGlowRemover(),
      debugShowCheckedModeBanner: false,
      home: const SafeArea(top: false, bottom: false, child: NaviHome()),
    );
  }
}
