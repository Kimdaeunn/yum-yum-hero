// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_naver_map/flutter_naver_map.dart';

Future initNaverMap() async {
  // Add your function code here!

  NaverMapSdk.instance.initialize(
      clientId: '8fiv3swgu9',
      onAuthFailed: (error) {
        print('Auth failed: $error');
      });
}
