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

  /// `Delete account`
  String get delete_account {
    return Intl.message(
      'Delete account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your details below to`
  String get add_user_data_view_1 {
    return Intl.message(
      'Please enter your details below to',
      name: 'add_user_data_view_1',
      desc: '',
      args: [],
    );
  }

  /// `create your account.`
  String get add_user_data_view_2 {
    return Intl.message(
      'create your account.',
      name: 'add_user_data_view_2',
      desc: '',
      args: [],
    );
  }

  /// `first name`
  String get first_name {
    return Intl.message(
      'first name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `last name`
  String get last_name {
    return Intl.message(
      'last name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `user name`
  String get username {
    return Intl.message(
      'user name',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `gender`
  String get gender {
    return Intl.message(
      'gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_ {
    return Intl.message(
      'Continue',
      name: 'continue_',
      desc: '',
      args: [],
    );
  }

  /// `male`
  String get male {
    return Intl.message(
      'male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `female`
  String get female {
    return Intl.message(
      'female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `email address is required`
  String get email_empty {
    return Intl.message(
      'email address is required',
      name: 'email_empty',
      desc: '',
      args: [],
    );
  }

  /// `invalid email address`
  String get email_valid {
    return Intl.message(
      'invalid email address',
      name: 'email_valid',
      desc: '',
      args: [],
    );
  }

  /// `password is required`
  String get password_empty {
    return Intl.message(
      'password is required',
      name: 'password_empty',
      desc: '',
      args: [],
    );
  }

  /// `password must be at least 8 characters`
  String get password_valid {
    return Intl.message(
      'password must be at least 8 characters',
      name: 'password_valid',
      desc: '',
      args: [],
    );
  }

  /// `first name is required`
  String get first_name_empty {
    return Intl.message(
      'first name is required',
      name: 'first_name_empty',
      desc: '',
      args: [],
    );
  }

  /// `last name is required`
  String get last_name_empty {
    return Intl.message(
      'last name is required',
      name: 'last_name_empty',
      desc: '',
      args: [],
    );
  }

  /// `username is required`
  String get username_empty {
    return Intl.message(
      'username is required',
      name: 'username_empty',
      desc: '',
      args: [],
    );
  }

  /// `gender is required`
  String get gender_empty {
    return Intl.message(
      'gender is required',
      name: 'gender_empty',
      desc: '',
      args: [],
    );
  }

  /// `must be less than 10 characters`
  String get must_be_less_10_characters {
    return Intl.message(
      'must be less than 10 characters',
      name: 'must_be_less_10_characters',
      desc: '',
      args: [],
    );
  }

  /// `this email is already in use`
  String get email_already_in_use {
    return Intl.message(
      'this email is already in use',
      name: 'email_already_in_use',
      desc: '',
      args: [],
    );
  }

  /// `Opps, There was a problem logging in. Check your email and password or create an account.`
  String get invalid_login {
    return Intl.message(
      'Opps, There was a problem logging in. Check your email and password or create an account.',
      name: 'invalid_login',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure that you want to logout?`
  String get logout_title {
    return Intl.message(
      'Are you sure that you want to logout?',
      name: 'logout_title',
      desc: '',
      args: [],
    );
  }

  /// `You have to login again with your username and password if you confirm to logout.`
  String get logout_message {
    return Intl.message(
      'You have to login again with your username and password if you confirm to logout.',
      name: 'logout_message',
      desc: '',
      args: [],
    );
  }

  /// `no`
  String get no {
    return Intl.message(
      'no',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account?`
  String get delete_account_ {
    return Intl.message(
      'Delete Account?',
      name: 'delete_account_',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account at chatty.charm?, everything will be deleted, this step not reverted!`
  String get delete_message {
    return Intl.message(
      'Are you sure you want to delete your account at chatty.charm?, everything will be deleted, this step not reverted!',
      name: 'delete_message',
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

  /// `To update your account information, please`
  String get update_details_1 {
    return Intl.message(
      'To update your account information, please',
      name: 'update_details_1',
      desc: '',
      args: [],
    );
  }

  /// `enter the new details below.`
  String get update_details_2 {
    return Intl.message(
      'enter the new details below.',
      name: 'update_details_2',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Discard`
  String get discard {
    return Intl.message(
      'Discard',
      name: 'discard',
      desc: '',
      args: [],
    );
  }

  /// `data updated successfully`
  String get data_updated {
    return Intl.message(
      'data updated successfully',
      name: 'data_updated',
      desc: '',
      args: [],
    );
  }

  /// `Delete Messages?`
  String get delete_messages {
    return Intl.message(
      'Delete Messages?',
      name: 'delete_messages',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete all your messages?`
  String get delete_messages_body {
    return Intl.message(
      'Are you sure you want to delete all your messages?',
      name: 'delete_messages_body',
      desc: '',
      args: [],
    );
  }

  /// `deleted successfully`
  String get delete_success {
    return Intl.message(
      'deleted successfully',
      name: 'delete_success',
      desc: '',
      args: [],
    );
  }

  /// `There are currently no messages to display. Start`
  String get no_messages_1 {
    return Intl.message(
      'There are currently no messages to display. Start',
      name: 'no_messages_1',
      desc: '',
      args: [],
    );
  }

  /// `a conversation to see your messages here!`
  String get no_messages_2 {
    return Intl.message(
      'a conversation to see your messages here!',
      name: 'no_messages_2',
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
