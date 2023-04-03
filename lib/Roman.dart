class RomanNumeralConverter {
  static const Map<int, String> romanNumeralMap = {
    1000: 'M',
    900: 'CM',
    500: 'D',
    400: 'CD',
    100: 'C',
    90: 'XC',
    50: 'L',
    40: 'XL',
    10: 'X',
    9: 'IX',
    5: 'V',
    4: 'IV',
    1: 'I',
  };

  String convert(int number) {
    if (number <= 0 || number >= 4000) {
      throw Exception('Number out of range. Must be between 1 and 3999.');
    }

    final romanNumerals = <String>[];

    for (final entry in romanNumeralMap.entries) {
      while (number >= entry.key) {
        romanNumerals.add(entry.value);
        number -= entry.key;
      }
    }

    return romanNumerals.join('');
  }
}