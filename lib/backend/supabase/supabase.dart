import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import '/flutter_flow/flutter_flow_util.dart';

export 'database/database.dart';

String _kSupabaseUrl = 'https://vmvdxetpbftteftzuleh.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZtdmR4ZXRwYmZ0dGVmdHp1bGVoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjYwODI1NzAsImV4cCI6MjA0MTY1ODU3MH0.D8vziJm4gULLRhD8Ne3bPam3BVFiLBEhFzrZg0B5Mps';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
