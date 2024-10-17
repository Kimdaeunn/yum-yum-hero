import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoresRecord extends FirestoreRecord {
  StoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "numRatings" field.
  int? _numRatings;
  int get numRatings => _numRatings ?? 0;
  bool hasNumRatings() => _numRatings != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "openTime" field.
  String? _openTime;
  String get openTime => _openTime ?? '';
  bool hasOpenTime() => _openTime != null;

  // "closeTime" field.
  String? _closeTime;
  String get closeTime => _closeTime ?? '';
  bool hasCloseTime() => _closeTime != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _img = snapshotData['img'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _numRatings = castToType<int>(snapshotData['numRatings']);
    _area = snapshotData['area'] as String?;
    _openTime = snapshotData['openTime'] as String?;
    _closeTime = snapshotData['closeTime'] as String?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stores');

  static Stream<StoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoresRecord.fromSnapshot(s));

  static Future<StoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoresRecord.fromSnapshot(s));

  static StoresRecord fromSnapshot(DocumentSnapshot snapshot) => StoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoresRecordData({
  String? name,
  String? img,
  double? rating,
  int? numRatings,
  String? area,
  String? openTime,
  String? closeTime,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'img': img,
      'rating': rating,
      'numRatings': numRatings,
      'area': area,
      'openTime': openTime,
      'closeTime': closeTime,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoresRecordDocumentEquality implements Equality<StoresRecord> {
  const StoresRecordDocumentEquality();

  @override
  bool equals(StoresRecord? e1, StoresRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.img == e2?.img &&
        e1?.rating == e2?.rating &&
        e1?.numRatings == e2?.numRatings &&
        e1?.area == e2?.area &&
        e1?.openTime == e2?.openTime &&
        e1?.closeTime == e2?.closeTime &&
        e1?.location == e2?.location;
  }

  @override
  int hash(StoresRecord? e) => const ListEquality().hash([
        e?.name,
        e?.img,
        e?.rating,
        e?.numRatings,
        e?.area,
        e?.openTime,
        e?.closeTime,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is StoresRecord;
}
