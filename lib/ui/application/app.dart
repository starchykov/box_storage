import 'package:box_storage/ui/app_navigation/app_navigation.dart';
import 'package:box_storage/ui/application/app_state.dart';
import 'package:box_storage/ui/application/app_view_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

class BoxStorageApp extends StatelessWidget {
  const BoxStorageApp({Key? key}) : super(key: key);

  static Widget render() {
    return ChangeNotifierProvider(
      create: (context) => AppViewModel(),
      lazy: false,
      child: const BoxStorageApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppViewModel viewModel = context.read<AppViewModel>();
    final AppState state = context.select((AppViewModel viewModel) => viewModel.state);
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
        brightness: state.isDarkTheme ? Brightness.dark : Brightness.light,
      ),
      // supportedLocales: Language.locales,
      routes: viewModel.appNavigation.routes,
      initialRoute: AppNavigationRoutes.homeWidget,
    );
  }
}
