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

  static String m0(kg) => "Больше, чем предыдущее измерение ${kg}";

  static String m1(kg) => "Меньше, чем предыдущее измерение ${kg}";

  static String m2(weight) => "${weight} кг.";

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
        "designMode": MessageLookupByLibrary.simpleMessage("Стиль приложения"),
        "edit": MessageLookupByLibrary.simpleMessage("Изменить"),
        "equalThanPrevious":
            MessageLookupByLibrary.simpleMessage("Вес идентичен с предыдущим."),
        "goToDashboard":
            MessageLookupByLibrary.simpleMessage("Перейти к главной"),
        "greaterThanPrevious": m0,
        "kg": MessageLookupByLibrary.simpleMessage("кг."),
        "language": MessageLookupByLibrary.simpleMessage("Russian"),
        "languageCode": MessageLookupByLibrary.simpleMessage("ru"),
        "lessThanPrevious": m1,
        "licenses": MessageLookupByLibrary.simpleMessage("Лицензии"),
        "localeCode": MessageLookupByLibrary.simpleMessage("ru_RU"),
        "notAvailableCreateMeasure": MessageLookupByLibrary.simpleMessage(
            "Вы уже отмеряли свой вес сегодня"),
        "notAvailableCreateMeasureDescription":
            MessageLookupByLibrary.simpleMessage(
                "Возвращайтесь завтра для новых измерений!"),
        "notCalculated": MessageLookupByLibrary.simpleMessage(
            "Используйте слайдеры для измерения веса."),
        "numberKg": m2,
        "rateTheApp":
            MessageLookupByLibrary.simpleMessage("Оценить приложение"),
        "record": MessageLookupByLibrary.simpleMessage("Записать"),
        "reportABug": MessageLookupByLibrary.simpleMessage("Сообщить о баге"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "sourceCode": MessageLookupByLibrary.simpleMessage("Исходный код"),
        "specifyTheWeight": MessageLookupByLibrary.simpleMessage("Указать вес"),
        "themeMode": MessageLookupByLibrary.simpleMessage("Тема приложения"),
        "title": MessageLookupByLibrary.simpleMessage("Weight Control"),
        "titleDevelopment":
            MessageLookupByLibrary.simpleMessage("Weight Control Development"),
        "titleStage":
            MessageLookupByLibrary.simpleMessage("Weight Control Stage"),
        "version": MessageLookupByLibrary.simpleMessage("Версия"),
        "weight": MessageLookupByLibrary.simpleMessage("Вес"),
        "yourMeasurements":
            MessageLookupByLibrary.simpleMessage("Ваши измерения")
      };
}
