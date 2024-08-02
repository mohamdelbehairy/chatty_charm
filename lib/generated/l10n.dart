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

  /// `It will be available soon`
  String get available_soon {
    return Intl.message(
      'It will be available soon',
      name: 'available_soon',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copied_to_clipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'copied_to_clipboard',
      desc: '',
      args: [],
    );
  }

  /// `Ask me anything...`
  String get ask_me {
    return Intl.message(
      'Ask me anything...',
      name: 'ask_me',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get language {
    return Intl.message(
      'Languages',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chat {
    return Intl.message(
      'Chats',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get log_out {
    return Intl.message(
      'Log out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `made with ❤️ in 🇪🇬`
  String get made_with {
    return Intl.message(
      'made with ❤️ in 🇪🇬',
      name: 'made_with',
      desc: '',
      args: [],
    );
  }

  /// `Mohamed El-Behairy`
  String get developer_name {
    return Intl.message(
      'Mohamed El-Behairy',
      name: 'developer_name',
      desc: '',
      args: [],
    );
  }

  /// `Chatty`
  String get Chatty {
    return Intl.message(
      'Chatty',
      name: 'Chatty',
      desc: '',
      args: [],
    );
  }

  /// `Charm`
  String get Charm {
    return Intl.message(
      'Charm',
      name: 'Charm',
      desc: '',
      args: [],
    );
  }

  /// `I'm here to help you with whatever you need, from answering questions to providing recommendations. Let's chat.`
  String get helper {
    return Intl.message(
      'I\'m here to help you with whatever you need, from answering questions to providing recommendations. Let\'s chat.',
      name: 'helper',
      desc: '',
      args: [],
    );
  }

  /// `Example: Some text example`
  String get expamle {
    return Intl.message(
      'Example: Some text example',
      name: 'expamle',
      desc: '',
      args: [],
    );
  }

  /// `goes in here`
  String get goes_here {
    return Intl.message(
      'goes in here',
      name: 'goes_here',
      desc: '',
      args: [],
    );
  }

  /// `Select a language`
  String get select_language {
    return Intl.message(
      'Select a language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get welcome {
    return Intl.message(
      'Welcome to',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Create a free Chatty Charm account`
  String get create_1 {
    return Intl.message(
      'Create a free Chatty Charm account',
      name: 'create_1',
      desc: '',
      args: [],
    );
  }

  /// `and ignite your curiosity!`
  String get create_2 {
    return Intl.message(
      'and ignite your curiosity!',
      name: 'create_2',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email {
    return Intl.message(
      'Email address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Create FREE account`
  String get create_free_account {
    return Intl.message(
      'Create FREE account',
      name: 'create_free_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message(
      'Log in',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Log in to your free Chatty Charm account`
  String get login_1 {
    return Intl.message(
      'Log in to your free Chatty Charm account',
      name: 'login_1',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get not_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'not_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Register now`
  String get register {
    return Intl.message(
      'Register now',
      name: 'register',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
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
