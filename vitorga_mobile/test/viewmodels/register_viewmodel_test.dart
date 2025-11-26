import 'package:flutter_test/flutter_test.dart';
import 'package:vitorga_mobile/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('RegisterViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
