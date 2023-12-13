import 'package:box_storage/ui/screens/settings_screen/settings_screen_state.dart';
import 'package:box_storage/ui/screens/settings_screen/settings_screen_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            border: null,
            // leading: Icon(CupertinoIcons.person_2),
            backgroundColor: CupertinoColors.systemBackground.withOpacity(0),
            largeTitle: const Text('Settings'),
            // trailing: Icon(CupertinoIcons.add_circled),
          ),
          const SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _SettingsProfile(),
                _SettingsTheme(),
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
                //         children: const <Widget>[Text('On'), SizedBox(width: 5), Icon(CupertinoIcons.forward)],
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
        ],
      ),
    );
  }
}

class _SettingsTheme extends StatelessWidget {
  const _SettingsTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SettingsScreenViewModel viewModel = context.read<SettingsScreenViewModel>();
    final SettingsScreenState state = context.select((SettingsScreenViewModel viewModel) => viewModel.state);
    return CupertinoFormSection.insetGrouped(
      header: const Text('Theme and behavior'),
      children: [
        CupertinoFormRow(
          prefix: PrefixWidget(
            icon: state.isDarkMode ? CupertinoIcons.circle_righthalf_fill : CupertinoIcons.circle_lefthalf_fill,
            title: 'Dark Mode',
            color: CupertinoColors.systemFill,
          ),
          child: CupertinoSwitch(
            value: state.isDarkMode,
            onChanged: (bool value) async => await viewModel.onChangeTheme(),
          ),
        ),
      ],
    );
  }
}

class _SettingsProfile extends StatelessWidget {
  const _SettingsProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoFormSection.insetGrouped(
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: CupertinoFormRow(
            prefix: const CircleAvatar(
              backgroundColor: CupertinoColors.systemFill,
              radius: 30,
            ),
            child: Row(
              children: [
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('User name', style: CupertinoTheme.of(context).textTheme.pickerTextStyle),
                    Text('Change profile info', style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[SizedBox(width: 5), Icon(CupertinoIcons.forward)],
                ),
              ],
            ),
          ),
        ),
      ],
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
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Icon(icon, color: CupertinoColors.white),
        ),
        const SizedBox(width: 15),
        Text(title)
      ],
    );
  }
}
