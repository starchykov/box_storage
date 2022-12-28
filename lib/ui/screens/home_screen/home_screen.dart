import 'package:box_storage/ui/screens/home_screen/home_screen_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget render() {
    return ChangeNotifierProvider<HomeScreenViewModel>(
      create: (context) => HomeScreenViewModel(context: context),
      child: const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final HomeScreenViewModel viewModel = context.read<HomeScreenViewModel>();
    return CupertinoTabScaffold(
      tabBuilder: (builder, int index) => viewModel.renderScreen(screenIndex: index),
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3),
            activeIcon: Icon(CupertinoIcons.circle_grid_3x3_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cube_box),
            activeIcon: Icon(CupertinoIcons.cube_box_fill),
            label: 'Boxes',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
