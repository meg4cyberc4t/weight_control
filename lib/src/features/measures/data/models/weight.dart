import 'package:meta/meta.dart';

@immutable
final class Weight {
  final double _grams;

  const Weight({
    final int kilograms = 0,
    final int grams = 0,
    final int ounces = 0,
    final int pounds = 0,
    final int stones = 0,
  }) : _grams = (stones * poundsPerStone * ouncesPerPounds * ouncesPerGrams) +
            (pounds * ouncesPerPounds * ouncesPerGrams) +
            (ounces * ouncesPerGrams) +
            (kilograms * gramsPerKilograms) +
            grams;

  int get inGrams => _grams ~/ 1;
  int get inKilograms => _grams ~/ gramsPerKilograms;
  int get inOunces => _grams ~/ ouncesPerGrams;
  int get inPounds => inOunces ~/ ouncesPerPounds;
  int get inStone => inPounds ~/ poundsPerStone;

  static const int gramsPerKilograms = 1000;
  static const double ouncesPerGrams = 28.35;
  static const int ouncesPerPounds = 16;
  static const int poundsPerStone = 14;

  int compareTo(final Weight other) => _grams.compareTo(other._grams);

  Weight operator +(final Weight other) =>
      Weight(grams: inGrams + other.inGrams);
  Weight operator -(final Weight other) =>
      Weight(grams: inGrams - other.inGrams);

  Weight operator *(final num factor) =>
      Weight(grams: (inGrams * factor).round());

  Weight operator ~/(final int quotient) {
    if (quotient == 0) {
      throw UnsupportedError('Division resulted in non-finite value');
    }
    return Weight(grams: inGrams ~/ quotient);
  }

  Weight abs() => Weight(grams: _grams.abs().round());

  bool operator <(final Weight other) => _grams < other._grams;
  bool operator <=(final Weight other) => _grams <= other._grams;
  bool operator >=(final Weight other) => _grams >= other._grams;
  bool operator >(final Weight other) => _grams > other._grams;

  @override
  String toString() => 'Weight{$_grams grams}';

  @override
  bool operator ==(final Object other) =>
      other is Weight && _grams == other._grams;

  @override
  int get hashCode => _grams.hashCode;
}
