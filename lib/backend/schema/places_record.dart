import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlacesRecord extends FirestoreRecord {
  PlacesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  bool hasIsFavorite() => _isFavorite != null;

  // "last_update" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  bool hasLastUpdate() => _lastUpdate != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _isFavorite = snapshotData['is_favorite'] as bool?;
    _lastUpdate = snapshotData['last_update'] as DateTime?;
    _rating = castToType<double>(snapshotData['rating']);
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlacesRecord.fromSnapshot(s));

  static Future<PlacesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlacesRecord.fromSnapshot(s));

  static PlacesRecord fromSnapshot(DocumentSnapshot snapshot) => PlacesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlacesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlacesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlacesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlacesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlacesRecordData({
  String? name,
  String? image,
  bool? isFavorite,
  DateTime? lastUpdate,
  double? rating,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'is_favorite': isFavorite,
      'last_update': lastUpdate,
      'rating': rating,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlacesRecordDocumentEquality implements Equality<PlacesRecord> {
  const PlacesRecordDocumentEquality();

  @override
  bool equals(PlacesRecord? e1, PlacesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.isFavorite == e2?.isFavorite &&
        e1?.lastUpdate == e2?.lastUpdate &&
        e1?.rating == e2?.rating &&
        e1?.location == e2?.location;
  }

  @override
  int hash(PlacesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.isFavorite,
        e?.lastUpdate,
        e?.rating,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is PlacesRecord;
}
