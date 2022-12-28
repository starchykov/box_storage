import 'package:box_storage/ui/app_navigation/app_navigation.dart';
import 'package:box_storage/ui/application/app_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import 'app_state.dart';

class BoxStorageApp extends StatelessWidget {
  const BoxStorageApp({Key? key}) : super(key: key);

  static Widget render() {
    return ChangeNotifierProvider<AppViewModel>(
      create: (context) => AppViewModel(),
      child: const BoxStorageApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppViewModel viewModel = context.read<AppViewModel>();
    final AppState state = context.select((AppViewModel viewModel) => viewModel.state);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: state.isDarkTheme ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: viewModel.applicationTheme.getApplicationTheme(isDarkTheme: state.isDarkTheme),
        routes: viewModel.appNavigation.routes,
        initialRoute: AppNavigationRoutes.homeWidget,
      ),
    );
  }
}
