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
import 'package:firebase_auth/firebase_auth.dart';

Future<void> kakaoLogout() async {
  kakao.UserApi.instance.logout();
  FirebaseAuth.instance.signOut();
}
