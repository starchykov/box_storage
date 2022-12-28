import 'package:box_storage/ui/screens/settings_screen/settings_screen_state.dart';
import 'package:box_storage/ui/screens/settings_screen/settings_screen_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static Widget render() {
    return ChangeNotifierProvider<SettingsScreenViewModel>(
      create: (context) => SettingsScreenViewModel(context: context),
      child: const SettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final SettingsScreenViewModel viewModel = context.read<SettingsScreenViewModel>();
    final SettingsScreenState state = context.select((SettingsScreenViewModel viewModel) => viewModel.state);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Settings'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoFormSection.insetGrouped(
              header: const Text('Theme and behavior'),
              children: [
                CupertinoFormRow(
                  prefix: const PrefixWidget(
                    icon: CupertinoIcons.circle_lefthalf_fill,
                    title: 'Dark Mode',
                    color: CupertinoColors.systemFill,
                  ),
                  child: CupertinoSwitch(
                    value: state.isDarkMode,
                    onChanged: (bool value) async => await viewModel.onChangeTheme(),
                  ),
                ),
              ],
            ),
            // CupertinoFormSection.insetGrouped(
            //   header: const Text('SECTION 2'),
            //   children: [
            //     CupertinoFormRow(
            //       prefix: const PrefixWidget(
            //         icon: CupertinoIcons.wifi,
            //         title: 'Wi-Fi',
            //         color: CupertinoColors.systemBlue,
            //       ),
            //       error: const Text('Home network unavailable'),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: const <Widget>[
            //           Text('Not connected'),
            //           SizedBox(width: 5),
            //           Icon(CupertinoIcons.forward)
            //         ],
            //       ),
            //     ),
            //     CupertinoFormRow(
            //       prefix: const PrefixWidget(
            //         icon: CupertinoIcons.bluetooth,
            //         title: 'Bluetooth',
            //         color: CupertinoColors.activeBlue,
            //       ),
            //       helper: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 4.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: const <Widget>[
            //             Text('Headphone'),
            //             Text('Connected'),
            //           ],
            //         ),
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: const <Widget>[
            //           Text('On'),
            //           SizedBox(width: 5),
            //           Icon(CupertinoIcons.forward)
            //         ],
            //       ),
            //     ),
            //     const CupertinoFormRow(
            //       prefix: PrefixWidget(
            //         icon: CupertinoIcons.bluetooth,
            //         title: 'Mobile Data',
            //         color: CupertinoColors.systemGreen,
            //       ),
            //       child: Icon(CupertinoIcons.forward),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class PrefixWidget extends StatelessWidget {
  const PrefixWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Icon(icon, color: CupertinoColors.white),
        ),
        const SizedBox(width: 15),
        Text(title)
      ],
    );
  }
}
