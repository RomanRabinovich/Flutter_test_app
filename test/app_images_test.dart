import 'dart:io';

import 'package:flutter_applazyload/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.actor).existsSync(), true);
    expect(File(AppImages.bear).existsSync(), true);
    expect(File(AppImages.topHeader).existsSync(), true);
    expect(File(AppImages.topHeaderSubImage).existsSync(), true);
  });
}
