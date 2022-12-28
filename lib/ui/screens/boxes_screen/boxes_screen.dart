import 'package:flutter/cupertino.dart';

class BoxesScreen extends StatelessWidget {
  const BoxesScreen({Key? key}) : super(key: key);

  static Widget render() {
    return const BoxesScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Boxes'),
      ),
      child: SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
