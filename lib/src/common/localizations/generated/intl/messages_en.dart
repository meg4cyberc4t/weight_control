// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(kg) => "More than the previous measurements by ${kg}";

  static String m1(weight) => "${weight} kg.";

  static String m2(kg) => "Less than the previous measurements by ${kg}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("About app"),
        "addAComment": MessageLookupByLibrary.simpleMessage("Add..."),
        "additional": MessageLookupByLibrary.simpleMessage("Additional"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "comment": MessageLookupByLibrary.simpleMessage("Comment"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "data": MessageLookupByLibrary.simpleMessage("Data"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Delete data"),
        "deleteAllContent": MessageLookupByLibrary.simpleMessage(
            "This action cannot be undone!"),
        "designMode": MessageLookupByLibrary.simpleMessage("Design Mode"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "equalThanPrevious":
            MessageLookupByLibrary.simpleMessage("The weight is equal."),
        "goToDashboard":
            MessageLookupByLibrary.simpleMessage("Go to the dashboard"),
        "greaterThanPrevious": m0,
        "kilogramsNumber": m1,
        "kilogramsShort": MessageLookupByLibrary.simpleMessage("kg."),
        "language": MessageLookupByLibrary.simpleMessage("English"),
        "languageCode": MessageLookupByLibrary.simpleMessage("en"),
        "lessThanPrevious": m2,
        "licenses": MessageLookupByLibrary.simpleMessage("Licenses"),
        "localeCode": MessageLookupByLibrary.simpleMessage("en_US"),
        "notAvailableCreateMeasure": MessageLookupByLibrary.simpleMessage(
            "Have you already lost your weight today"),
        "notAvailableCreateMeasureDescription":
            MessageLookupByLibrary.simpleMessage(
                "Come back tomorrow for new measurements!"),
        "notCalculated":
            MessageLookupByLibrary.simpleMessage("Use the sliders to measure."),
        "rateTheApp": MessageLookupByLibrary.simpleMessage("Rate the app"),
        "record": MessageLookupByLibrary.simpleMessage("Record"),
        "reportABug": MessageLookupByLibrary.simpleMessage("Report a bug"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "sourceCode": MessageLookupByLibrary.simpleMessage("Source code"),
        "specifyTheWeight":
            MessageLookupByLibrary.simpleMessage("Specify the weight"),
        "themeMode": MessageLookupByLibrary.simpleMessage("Theme Mode"),
        "title": MessageLookupByLibrary.simpleMessage("Weight Control"),
        "titleDevelopment":
            MessageLookupByLibrary.simpleMessage("Weight Control Development"),
        "titleStage":
            MessageLookupByLibrary.simpleMessage("Weight Control Stage"),
        "version": MessageLookupByLibrary.simpleMessage("Version"),
        "weight": MessageLookupByLibrary.simpleMessage("Weight"),
        "weightMode": MessageLookupByLibrary.simpleMessage("Unit of mass"),
        "yourMeasurements":
            MessageLookupByLibrary.simpleMessage("Your measurements")
      };
}
