import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// Hello
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// My email
  ///
  /// In en, this message translates to:
  /// **'jhancarloslenis@gmail.com'**
  String get my_email;

  /// My email subject
  ///
  /// In en, this message translates to:
  /// **'Contact me'**
  String get my_email_subject;

  /// My email body
  ///
  /// In en, this message translates to:
  /// **'Hi Jhan, i love your work and i would like to discuss a project with you...'**
  String get my_email_body;

  /// My name abbreviation
  ///
  /// In en, this message translates to:
  /// **'JL'**
  String get my_name_abbreviation;

  /// My presentation
  ///
  /// In en, this message translates to:
  /// **'Hello, I\'m Jhancarlos Lenis \nand I\'m a Flutter Senior Developer'**
  String get my_presentation;

  /// Home
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Skills
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// Projects
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// Contact
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// Get in touch
  ///
  /// In en, this message translates to:
  /// **'Get in touch'**
  String get get_in_touch;

  /// the text of what i can do
  ///
  /// In en, this message translates to:
  /// **'Developer specialized in Flutter and Dart, building smooth and scalable mobile apps for Android and iOS, with SQLite integration for efficient local data management. Focused on performance, clean design, and crafting experiences that truly connect with users.'**
  String get what_i_can_do;

  /// Homecenter
  ///
  /// In en, this message translates to:
  /// **'Homecenter'**
  String get homecenter;

  /// Homecenter app description
  ///
  /// In en, this message translates to:
  /// **'Homecenter is a mobile app for the Sodimac chain of stores in Latin America. It allows you to browse the products and add them to your cart.'**
  String get homecenter_description;

  /// Pideky
  ///
  /// In en, this message translates to:
  /// **'Pideky'**
  String get pideky;

  /// Pideky app description
  ///
  /// In en, this message translates to:
  /// **'Pideky is a mobile app for the Nutresa chain of stores in America. It allows you to browse the products and add them to your cart.'**
  String get pideky_description;

  /// Longevo
  ///
  /// In en, this message translates to:
  /// **'Longevo'**
  String get longevo;

  /// Longevo app description
  ///
  /// In en, this message translates to:
  /// **'Longevo is a health and wellness app in Latin America. It allows you to track your health and wellness goals and achievements.'**
  String get longevo_description;

  /// Finandina Bank
  ///
  /// In en, this message translates to:
  /// **'Finandina Bank'**
  String get finandina_bank;

  /// Finandina Bank app description
  ///
  /// In en, this message translates to:
  /// **'Finandina Bank is a banking app in Colombia. It allows you to manage your finances and investments.'**
  String get finandina_bank_description;

  /// Available on
  ///
  /// In en, this message translates to:
  /// **'Available on'**
  String get available_on;

  /// About me
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get about_me;

  /// About me description
  ///
  /// In en, this message translates to:
  /// **'Software development engineer with more than 4 years of experience in mobile application development using Flutter. I have led high impact projects from architecture to deployment in stores, implementing modular, scalable and user experience oriented solutions. Expert in development best practices, monitoring tools and code quality improvement.'**
  String get about_me_description;

  /// Get in touch description
  ///
  /// In en, this message translates to:
  /// **'Get in touch with me to discuss your next project. I\'m always looking for new challenges and opportunities to grow.'**
  String get get_in_touch_description;

  /// Social media
  ///
  /// In en, this message translates to:
  /// **'Social media'**
  String get social_media;

  /// Created by Jhancarlos Lenis
  ///
  /// In en, this message translates to:
  /// **'Created by Jhancarlos Lenis'**
  String get created_by;

  /// Created with Flutter
  ///
  /// In en, this message translates to:
  /// **'Created with Flutter'**
  String get created_with_flutter;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
