// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('reassemble does not crash', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: const Text('Hello World')
    ));
    await tester.pump();
    tester.binding.reassembleApplication();
    await tester.pump();
  });
}
