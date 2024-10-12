import '../database.dart';

class SampleDataTable extends SupabaseTable<SampleDataRow> {
  @override
  String get tableName => 'SampleData';

  @override
  SampleDataRow createRow(Map<String, dynamic> data) => SampleDataRow(data);
}

class SampleDataRow extends SupabaseDataRow {
  SampleDataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SampleDataTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
