import 'package:flutter/material.dart';
import 'package:web_portfolio/l10n/l10n.dart';

/// {@template nav_items}
/// Extension to get the nav items
/// {@endtemplate}
extension NavItemsX on BuildContext {
  /// {@macro nav_items}
  List<NavItem> get navItems => [
    NavItem(text: l10n.about_me, icon: Icons.person, type: NavItemType.home),
    NavItem(
      text: l10n.skills,
      icon: Icons.handyman_outlined,
      type: NavItemType.skills,
    ),
    NavItem(text: l10n.projects, icon: Icons.apps, type: NavItemType.projects),
    NavItem(
      text: l10n.contact,
      icon: Icons.email_rounded,
      type: NavItemType.contact,
    ),
  ];
}

/// {@template nav_item}
/// A navigation item
/// {@endtemplate}
class NavItem {
  const NavItem({required this.text, required this.icon, required this.type});

  /// The text of the navigation item
  final String text;

  /// The icon of the navigation item
  final IconData icon;

  /// The type of the navigation item
  final NavItemType type;
}

/// {@template nav_item_type}
/// The type of the navigation item
/// {@endtemplate}
enum NavItemType {
  /// The home type
  home,

  /// The skills type
  skills,

  /// The projects type
  projects,

  /// The contact type
  contact,
}
