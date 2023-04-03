import 'package:flutter_test/flutter_test.dart';
import 'package:testcases/Roman.dart';

void main() {
  final converter = RomanNumeralConverter();

  test('Conversion for 4 is correct', () {
    expect(converter.convert(4), equals('IV'));
  });

  test('Conversion for 5 is correct', () {
    expect(converter.convert(5), equals('V'));
  });

  test('Conversion for 6 is correct', () {
    expect(converter.convert(6), equals('VI'));
  });

  test('Conversion for 9 is correct', () {
    expect(converter.convert(9), equals('IX'));
  });

  test('Conversion for 10 is correct', () {
    expect(converter.convert(10), equals('X'));
  });
}