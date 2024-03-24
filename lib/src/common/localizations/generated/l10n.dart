// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class GeneratedLocalization {
  GeneratedLocalization();

  static GeneratedLocalization? _current;

  static GeneratedLocalization get current {
    assert(_current != null,
        'No instance of GeneratedLocalization was loaded. Try to initialize the GeneratedLocalization delegate before accessing GeneratedLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<GeneratedLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = GeneratedLocalization();
      GeneratedLocalization._current = instance;

      return instance;
    });
  }

  static GeneratedLocalization of(BuildContext context) {
    final instance = GeneratedLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of GeneratedLocalization present in the widget tree. Did you add GeneratedLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static GeneratedLocalization? maybeOf(BuildContext context) {
    return Localizations.of<GeneratedLocalization>(
        context, GeneratedLocalization);
  }

  /// `en_US`
  String get localeCode {
    return Intl.message(
      'en_US',
      name: 'localeCode',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get languageCode {
    return Intl.message(
      'en',
      name: 'languageCode',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Weight Control`
  String get title {
    return Intl.message(
      'Weight Control',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Weight Control Stage`
  String get titleStage {
    return Intl.message(
      'Weight Control Stage',
      name: 'titleStage',
      desc: '',
      args: [],
    );
  }

  /// `Weight Control Development`
  String get titleDevelopment {
    return Intl.message(
      'Weight Control Development',
      name: 'titleDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `About app`
  String get aboutApp {
    return Intl.message(
      'About app',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Rate the app`
  String get rateTheApp {
    return Intl.message(
      'Rate the app',
      name: 'rateTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Licenses`
  String get licenses {
    return Intl.message(
      'Licenses',
      name: 'licenses',
      desc: '',
      args: [],
    );
  }

  /// `Additional`
  String get additional {
    return Intl.message(
      'Additional',
      name: 'additional',
      desc: '',
      args: [],
    );
  }

  /// `Source code`
  String get sourceCode {
    return Intl.message(
      'Source code',
      name: 'sourceCode',
      desc: '',
      args: [],
    );
  }

  /// `Report a bug`
  String get reportABug {
    return Intl.message(
      'Report a bug',
      name: 'reportABug',
      desc: '',
      args: [],
    );
  }

  /// `Theme Mode`
  String get themeMode {
    return Intl.message(
      'Theme Mode',
      name: 'themeMode',
      desc: '',
      args: [],
    );
  }

  /// `Design Mode`
  String get designMode {
    return Intl.message(
      'Design Mode',
      name: 'designMode',
      desc: '',
      args: [],
    );
  }

  /// `Delete data`
  String get deleteAll {
    return Intl.message(
      'Delete data',
      name: 'deleteAll',
      desc: '',
      args: [],
    );
  }

  /// `This action cannot be undone!`
  String get deleteAllContent {
    return Intl.message(
      'This action cannot be undone!',
      name: 'deleteAllContent',
      desc: '',
      args: [],
    );
  }

  /// `Data`
  String get data {
    return Intl.message(
      'Data',
      name: 'data',
      desc: '',
      args: [],
    );
  }

  /// `Have you already lost your weight today`
  String get notAvailableCreateMeasure {
    return Intl.message(
      'Have you already lost your weight today',
      name: 'notAvailableCreateMeasure',
      desc: '',
      args: [],
    );
  }

  /// `Come back tomorrow for new measurements!`
  String get notAvailableCreateMeasureDescription {
    return Intl.message(
      'Come back tomorrow for new measurements!',
      name: 'notAvailableCreateMeasureDescription',
      desc: '',
      args: [],
    );
  }

  /// `Go to the dashboard`
  String get goToDashboard {
    return Intl.message(
      'Go to the dashboard',
      name: 'goToDashboard',
      desc: '',
      args: [],
    );
  }

  /// `Specify the weight`
  String get specifyTheWeight {
    return Intl.message(
      'Specify the weight',
      name: 'specifyTheWeight',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `Add...`
  String get addAComment {
    return Intl.message(
      'Add...',
      name: 'addAComment',
      desc: '',
      args: [],
    );
  }

  /// `More than the previous measurements by {kg}`
  String greaterThanPrevious(Object kg) {
    return Intl.message(
      'More than the previous measurements by $kg',
      name: 'greaterThanPrevious',
      desc: '',
      args: [kg],
    );
  }

  /// `Less than the previous measurements by {kg}`
  String lessThanPrevious(Object kg) {
    return Intl.message(
      'Less than the previous measurements by $kg',
      name: 'lessThanPrevious',
      desc: '',
      args: [kg],
    );
  }

  /// `The weight is equal.`
  String get equalThanPrevious {
    return Intl.message(
      'The weight is equal.',
      name: 'equalThanPrevious',
      desc: '',
      args: [],
    );
  }

  /// `Use the sliders to measure.`
  String get notCalculated {
    return Intl.message(
      'Use the sliders to measure.',
      name: 'notCalculated',
      desc: '',
      args: [],
    );
  }

  /// `Record`
  String get record {
    return Intl.message(
      'Record',
      name: 'record',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Your measurements`
  String get yourMeasurements {
    return Intl.message(
      'Your measurements',
      name: 'yourMeasurements',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `kg.`
  String get kg {
    return Intl.message(
      'kg.',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `{weight} kg.`
  String numberKg(double weight) {
    final NumberFormat weightNumberFormat = NumberFormat.compact(
      locale: Intl.getCurrentLocale(),
    );
    final String weightString = weightNumberFormat.format(weight);

    return Intl.message(
      '$weightString kg.',
      name: 'numberKg',
      desc: '',
      args: [weightString],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<GeneratedLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<GeneratedLocalization> load(Locale locale) =>
      GeneratedLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
