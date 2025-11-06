import 'package:flutter/material.dart';
import 'package:web_portfolio/core/utils/project_utils.dart';
import 'package:web_portfolio/gen/assets/assets.gen.dart';
import 'package:web_portfolio/l10n/l10n.dart';

extension ProjectsExtension on BuildContext {
  List<ProjectUtils> get projects => [
    ProjectUtils(
      image: Assets.images.homecenter.path,
      title: l10n.homecenter,
      description: l10n.homecenter_description,
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.jfr.homecenter.app&hl=es_CO',
      iosUrl:
          'https://apps.apple.com/co/app/homecenter-hogar-construcci%C3%B3n/id893804497',
      webUrl:
          'https://www.homecenter.com.co/homecenter-co/content/app-homecenter/',
    ),
    ProjectUtils(
      image: Assets.images.pideky.path,
      title: l10n.pideky,
      description: l10n.pideky_description,
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.celuweb.pidekyapp&hl=es_CO',
      iosUrl: 'https://apps.apple.com/co/app/pideky-2-0/id6503016055',
      webUrl: 'https://www.pideky.com/#/prehome',
    ),
    ProjectUtils(
      image: Assets.images.longevo.path,
      title: l10n.longevo,
      description: l10n.longevo_description,
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.longevo.mobile&hl=es_CO',
      iosUrl: 'https://www.longevo.com/',
      webUrl: '',
    ),
    ProjectUtils(
      image: Assets.images.finandina.path,
      title: l10n.finandina_bank,
      description: l10n.finandina_bank_description,
      androidUrl:
          'https://play.google.com/store/apps/details?id=com.appmovil.app&hl=es_CO',
      iosUrl:
          'https://apps.apple.com/co/app/finandina-app-personas/id1404409559',
      webUrl: 'https://www.bancofinandina.com/',
    ),
  ];
}
