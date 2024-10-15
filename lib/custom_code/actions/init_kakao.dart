// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart' as kakao;

Future initKakao() async {
  kakao.KakaoSdk.init(
    nativeAppKey: 'e58c290abc5c9098694206cfc91b8fcc',
    javaScriptAppKey: 'ce8431f47fd9ba27273f060dbb0d21bd',
  );
}
