import 'package:flutter/material.dart';
import 'package:web_portfolio/core/const/gap.dart';
import 'package:web_portfolio/core/const/sizes.dart';
import 'package:web_portfolio/core/extension/nav_items.dart';

/// {@template end_drawer}
/// The end drawer for the app
/// {@endtemplate}
class EndDrawer extends StatelessWidget {
  /// {@macro end_drawer}
  const EndDrawer({
    super.key,
    required this.scaffoldKey,
    required this.onSelectedItem,
  });

  /// The scaffold key
  final GlobalKey<ScaffoldState> scaffoldKey;

  /// The selected item callback
  final void Function(NavItemType type) onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p16,
          vertical: Sizes.p16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => scaffoldKey.currentState?.closeEndDrawer(),
              icon: Icon(Icons.close),
            ),
            Gap.height16,
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: context.navItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(context.navItems[index].text),
                  trailing: Icon(context.navItems[index].icon),
                  onTap: () => onSelectedItem.call(context.navItems[index].type),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Gap.height16;
              },
            ),
          ],
        ),
      ),
    );
  }
}
