import 'package:flutter_test/flutter_test.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

void main() {
  test('Matching values - option 1', () {
    const Weight weight = Weight(grams: 1280);
    expect(weight.inGrams, 1280);
    expect(weight.inKilograms, 1);
    expect(weight.inOunces, 45);
    expect(weight.inPounds, 2);
    expect(weight.inStone, 0);
  });

  test('Matching values - option 2', () {
    const Weight weight = Weight(grams: 56790);
    expect(weight.inGrams, 56790);
    expect(weight.inKilograms, 56);
    expect(weight.inOunces, 2003);
    expect(weight.inPounds, 125);
    expect(weight.inStone, 8);
  });

  test('Matching values - option 3', () {
    const Weight weight = Weight(
      kilograms: 13,
      grams: 190,
    );
    expect(weight.inGrams, 13190);
    expect(weight.inKilograms, 13);
    expect(weight.inOunces, 465);
    expect(weight.inPounds, 29);
    expect(weight.inStone, 2);
  });
}
