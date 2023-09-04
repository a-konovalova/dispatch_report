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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  ///'МЦ'
  String get marten_gild {
    return Intl.message("МЦ",
    name: 'marten_gild',
      desc: '',
      args: [],
    );
  }

  /// `Авторизация`
  String get login_title {
    return Intl.message(
      'Авторизация',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Логин`
  String get login {
    return Intl.message(
      'Логин',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error_title {
    return Intl.message(
      'Ошибка',
      name: 'error_title',
      desc: '',
      args: [],
    );
  }

  /// `Отсутствует подключение к серверу`
  String get no_connection {
    return Intl.message(
      'Отсутствует подключение к серверу',
      name: 'no_connection',
      desc: '',
      args: [],
    );
  }

  /// `Неверный логин или пароль`
  String get not_authorized {
    return Intl.message(
      'Неверный логин или пароль',
      name: 'not_authorized',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка авторизации`
  String get error_authorization {
    return Intl.message(
      'Ошибка авторизации',
      name: 'error_authorization',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get input {
    return Intl.message(
      'Войти',
      name: 'input',
      desc: '',
      args: [],
    );
  }

  /// `Зарплата`
  String get salary {
    return Intl.message(
      'Зарплата',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `Отпуск`
  String get vacation {
    return Intl.message(
      'Отпуск',
      name: 'vacation',
      desc: '',
      args: [],
    );
  }

  /// `График`
  String get schedule {
    return Intl.message(
      'График',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Отсутствия`
  String get absences {
    return Intl.message(
      'Отсутствия',
      name: 'absences',
      desc: '',
      args: [],
    );
  }

  // /// `Личные данные`
  // String get personal_data {
  //   return Intl.message(
  //     'Личные данные',
  //     name: 'personal_data',
  //     desc: '',
  //     args: [],
  //   );
  // }

  /// `Личные данные`
  String get personal_information {
    return Intl.message(
      'Личные данные',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Главное`
  String get main {
    return Intl.message(
      'Главное',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Документы`
  String get documents {
    return Intl.message(
      'Документы',
      name: 'documents',
      desc: '',
      args: [],
    );
  }

  /// `Нет данных`
  String get no_data {
    return Intl.message(
      'Нет данных',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `Заказать справку`
  String get order_reference {
    return Intl.message(
      'Заказать справку',
      name: 'order_reference',
      desc: '',
      args: [],
    );
  }

  /// `Справки о ваших доходах и удержанных налогах и другие справки с места работы.`
  String get document_main_title {
    return Intl.message(
      'Справки о ваших доходах и удержанных налогах и другие справки с места работы.',
      name: 'document_main_title',
      desc: '',
      args: [],
    );
  }

  /// `Запросить`
  String get request {
    return Intl.message(
      'Запросить',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Открыть график`
  String get open_schedule {
    return Intl.message(
      'Открыть график',
      name: 'open_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Ваш плановый график и присутствие на территории завода.`
  String get schedule_main_title {
    return Intl.message(
      'Ваш плановый график и присутствие на территории завода.',
      name: 'schedule_main_title',
      desc: '',
      args: [],
    );
  }

  /// `ок`
  String get ok {
    return Intl.message(
      'ок',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Заявки на отсутствия отсутствуют`
  String get request_absence_not_found {
    return Intl.message(
      'Заявки на отсутствия отсутствуют',
      name: 'request_absence_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Заявки на документы отсутствуют`
  String get request_documents_not_found {
    return Intl.message(
      'Заявки на документы отсутствуют',
      name: 'request_documents_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Заявка добавлена`
  String get request_added {
    return Intl.message(
      'Заявка добавлена',
      name: 'request_added',
      desc: '',
      args: [],
    );
  }

  /// `Начало периода не может быть меньше, либо раво концу периода`
  String get error_period {
    return Intl.message(
      'Начало периода не может быть меньше, либо раво концу периода',
      name: 'error_period',
      desc: '',
      args: [],
    );
  }

  /// `Что-то пошло не так`
  String get unknown {
    return Intl.message(
      'Что-то пошло не так',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Запрос не выполнен. Пожалуйста, повторите попытку позже.`
  String get request_error_request_later {
    return Intl.message(
      'Запрос не выполнен. Пожалуйста, повторите попытку позже.',
      name: 'request_error_request_later',
      desc: '',
      args: [],
    );
  }

  /// `Новое отсутствие`
  String get new_absence {
    return Intl.message(
      'Новое отсутствие',
      name: 'new_absence',
      desc: '',
      args: [],
    );
  }

  /// `Отправить запрос`
  String get send_request {
    return Intl.message(
      'Отправить запрос',
      name: 'send_request',
      desc: '',
      args: [],
    );
  }

  /// `Начало периода`
  String get start_period {
    return Intl.message(
      'Начало периода',
      name: 'start_period',
      desc: '',
      args: [],
    );
  }

  /// `Конец периода`
  String get end_period {
    return Intl.message(
      'Конец периода',
      name: 'end_period',
      desc: '',
      args: [],
    );
  }

  /// `Сумма`
  String get sum {
    return Intl.message(
      'Сумма',
      name: 'sum',
      desc: '',
      args: [],
    );
  }

  /// `Период`
  String get period {
    return Intl.message(
      'Период',
      name: 'period',
      desc: '',
      args: [],
    );
  }

  /// `Часы`
  String get hours {
    return Intl.message(
      'Часы',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Оплачено\nчасов`
  String get paid {
    return Intl.message(
      'Оплачено\nчасов',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `Дни`
  String get days_I {
    return Intl.message(
      'Дни',
      name: 'days_I',
      desc: '',
      args: [],
    );
  }

  /// `Начисления`
  String get accruals {
    return Intl.message(
      'Начисления',
      name: 'accruals',
      desc: '',
      args: [],
    );
  }

  /// `Удержания`
  String get retention {
    return Intl.message(
      'Удержания',
      name: 'retention',
      desc: '',
      args: [],
    );
  }

  /// `Выплаты`
  String get payouts {
    return Intl.message(
      'Выплаты',
      name: 'payouts',
      desc: '',
      args: [],
    );
  }

  /// `Сдельная оплата`
  String get deal {
    return Intl.message(
      'Сдельная оплата',
      name: 'deal',
      desc: '',
      args: [],
    );
  }

  /// `руб.`
  String get rub {
    return Intl.message(
      'руб.',
      name: 'rub',
      desc: '',
      args: [],
    );
  }

  /// `Информация за`
  String get information_for {
    return Intl.message(
      'Информация за',
      name: 'information_for',
      desc: '',
      args: [],
    );
  }

  /// `отсутствует`
  String get absent {
    return Intl.message(
      'отсутствует',
      name: 'absent',
      desc: '',
      args: [],
    );
  }

  /// `Должность`
  String get position {
    return Intl.message(
      'Должность',
      name: 'position',
      desc: '',
      args: [],
    );
  }

  /// `Оклад (тариф)`
  String get tariff {
    return Intl.message(
      'Оклад (тариф)',
      name: 'tariff',
      desc: '',
      args: [],
    );
  }

  /// `К выплате`
  String get to_payoff {
    return Intl.message(
      'К выплате',
      name: 'to_payoff',
      desc: '',
      args: [],
    );
  }

  /// `Подразделение`
  String get subdivision {
    return Intl.message(
      'Подразделение',
      name: 'subdivision',
      desc: '',
      args: [],
    );
  }

  /// `Организация`
  String get organization {
    return Intl.message(
      'Организация',
      name: 'organization',
      desc: '',
      args: [],
    );
  }

  /// `Дней`
  String get days_R {
    return Intl.message(
      'Дней',
      name: 'days_R',
      desc: '',
      args: [],
    );
  }

  /// `За период`
  String get for_period {
    return Intl.message(
      'За период',
      name: 'for_period',
      desc: '',
      args: [],
    );
  }

  /// `Вид отпуска`
  String get vacation_type {
    return Intl.message(
      'Вид отпуска',
      name: 'vacation_type',
      desc: '',
      args: [],
    );
  }

  /// `Остатки отгулов`
  String get leftovers_from_time_off {
    return Intl.message(
      'Остатки отгулов',
      name: 'leftovers_from_time_off',
      desc: '',
      args: [],
    );
  }

  /// `Остатки отпусков`
  String get leftovers_from_vacations {
    return Intl.message(
      'Остатки отпусков',
      name: 'leftovers_from_vacations',
      desc: '',
      args: [],
    );
  }

  /// `Плановые отпуска`
  String get scheduled_vacations {
    return Intl.message(
      'Плановые отпуска',
      name: 'scheduled_vacations',
      desc: '',
      args: [],
    );
  }

  /// `Фактические отпуска`
  String get actual_vacations {
    return Intl.message(
      'Фактические отпуска',
      name: 'actual_vacations',
      desc: '',
      args: [],
    );
  }

  /// `Год/Несколько лет`
  String get age_ages {
    return Intl.message(
      'Год/Несколько лет',
      name: 'age_ages',
      desc: '',
      args: [],
    );
  }

  /// `Месяц/Несколько месяцев`
  String get month_months {
    return Intl.message(
      'Месяц/Несколько месяцев',
      name: 'month_months',
      desc: '',
      args: [],
    );
  }

  /// `Другой вариант`
  String get other_variant {
    return Intl.message(
      'Другой вариант',
      name: 'other_variant',
      desc: '',
      args: [],
    );
  }

  /// `Не выбран тип документа`
  String get not_select_type_doc {
    return Intl.message(
      'Не выбран тип документа',
      name: 'not_select_type_doc',
      desc: '',
      args: [],
    );
  }

  /// `Количество копий`
  String get count_copy {
    return Intl.message(
      'Количество копий',
      name: 'count_copy',
      desc: '',
      args: [],
    );
  }

  /// `Не выбран период`
  String get unknown_period {
    return Intl.message(
      'Не выбран период',
      name: 'unknown_period',
      desc: '',
      args: [],
    );
  }

  /// `Куда предоставляется`
  String get place_of_delivery {
    return Intl.message(
      'Куда предоставляется',
      name: 'place_of_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Не выбрано место предоставления`
  String get unknown_place_of_delivery {
    return Intl.message(
      'Не выбрано место предоставления',
      name: 'unknown_place_of_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Сообщение отправлено`
  String get message_sent {
    return Intl.message(
      'Сообщение отправлено',
      name: 'message_sent',
      desc: '',
      args: [],
    );
  }

  /// `Обратная связь`
  String get feedback {
    return Intl.message(
      'Обратная связь',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get send {
    return Intl.message(
      'Отправить',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Выход`
  String get exit {
    return Intl.message(
      'Выход',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Введите сообщение`
  String get input_message {
    return Intl.message(
      'Введите сообщение',
      name: 'input_message',
      desc: '',
      args: [],
    );
  }

  /// `Документ`
  String get document {
    return Intl.message(
      'Документ',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Новый пароль`
  String get new_password {
    return Intl.message(
      'Новый пароль',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Повторите пароль`
  String get repeat_password {
    return Intl.message(
      'Повторите пароль',
      name: 'repeat_password',
      desc: '',
      args: [],
    );
  }

  /// `Произошла неизвестная ошибка. Попробуйте воспользоваться настольной версией кабинета.`
  String get error_open_desktop {
    return Intl.message(
      'Произошла неизвестная ошибка. Попробуйте воспользоваться настольной версией кабинета.',
      name: 'error_open_desktop',
      desc: '',
      args: [],
    );
  }

  /// `Для входа в приложение необходимо сменить пароль на новый`
  String get info_change_password {
    return Intl.message(
      'Для входа в приложение необходимо сменить пароль на новый',
      name: 'info_change_password',
      desc: '',
      args: [],
    );
  }

  /// `Придумайте код для быстрого входа`
  String get think_key {
    return Intl.message(
      'Придумайте код для быстрого входа',
      name: 'think_key',
      desc: '',
      args: [],
    );
  }

  /// `Отгул`
  String get day_off {
    return Intl.message(
      'Отгул',
      name: 'day_off',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Пожелание`
  String get wish {
    return Intl.message(
      'Пожелание',
      name: 'wish',
      desc: '',
      args: [],
    );
  }

  /// `Запрос документа`
  String get request_document {
    return Intl.message(
      'Запрос документа',
      name: 'request_document',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message(
      'Да',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Касса взаимопомощи`
  String get cash_box {
    return Intl.message(
      'Касса взаимопомощи',
      name: 'cash_box',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
