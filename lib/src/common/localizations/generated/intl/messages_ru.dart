// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(kg) => "Меньше, чем предидущее измерение на {${kg}} кг.";

  static String m1(kg) => "Больше, чем предидущее измерение на {${kg}} кг.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("О приложении"),
        "addAComment": MessageLookupByLibrary.simpleMessage("Добавить..."),
        "additional": MessageLookupByLibrary.simpleMessage("Дополнительно"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "comment": MessageLookupByLibrary.simpleMessage("Комментарий"),
        "create": MessageLookupByLibrary.simpleMessage("Создать"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Главная"),
        "data": MessageLookupByLibrary.simpleMessage("Данные"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "deleteAll": MessageLookupByLibrary.simpleMessage("Удалить данные"),
        "deleteAllContent": MessageLookupByLibrary.simpleMessage(
            "Это действие нельзя будет отменить!"),
        "goToDashboard":
            MessageLookupByLibrary.simpleMessage("Перейти к главной"),
        "kg": MessageLookupByLibrary.simpleMessage("Кг"),
        "language": MessageLookupByLibrary.simpleMessage("Russian"),
        "languageCode": MessageLookupByLibrary.simpleMessage("ru"),
        "lessThenPrevious": m0,
        "licenses": MessageLookupByLibrary.simpleMessage("Лицензии"),
        "localeCode": MessageLookupByLibrary.simpleMessage("ru_RU"),
        "moreThenPrevious": m1,
        "notAvailableCreateMeasure": MessageLookupByLibrary.simpleMessage(
            "Вы уже отмеряли свой вес сегодня"),
        "notAvailableCreateMeasureDescription":
            MessageLookupByLibrary.simpleMessage(
                "Возвращайтесь завтра для новых измерений!"),
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Оценить приложение"),
        "record": MessageLookupByLibrary.simpleMessage("Записать"),
        "reportABug": MessageLookupByLibrary.simpleMessage("Сообщить о баге"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "sourceCode": MessageLookupByLibrary.simpleMessage("Исходный код"),
        "specifyTheWeight": MessageLookupByLibrary.simpleMessage("Указать вес"),
        "title": MessageLookupByLibrary.simpleMessage("Weight Control"),
        "titleDevelopment":
            MessageLookupByLibrary.simpleMessage("Weight Control Development"),
        "titleStage":
            MessageLookupByLibrary.simpleMessage("Weight Control Stage"),
        "version": MessageLookupByLibrary.simpleMessage("Версия"),
        "weight": MessageLookupByLibrary.simpleMessage("Вес")
      };
}
