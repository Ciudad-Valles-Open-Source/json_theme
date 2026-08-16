import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:json_theme/json_theme.dart';

void main() {
  test('test big_red.json', () {
    final themeStr = File('example/assets/themes/big_red.json').readAsStringSync();
    final themeJson = json.decode(themeStr);
    
    final theme = ThemeDecoder().decodeThemeData(themeJson, validate: true);
    print(theme);
  });
}
