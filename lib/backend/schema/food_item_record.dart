import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodItemRecord extends FirestoreRecord {
  FoodItemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "sale_per" field.
  double? _salePer;
  double get salePer => _salePer ?? 0.0;
  bool hasSalePer() => _salePer != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _stock = castToType<int>(snapshotData['stock']);
    _img = snapshotData['img'] as String?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _salePer = castToType<double>(snapshotData['sale_per']);
    _desc = snapshotData['desc'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('foodItem')
          : FirebaseFirestore.instance.collectionGroup('foodItem');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('foodItem').doc(id);

  static Stream<FoodItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodItemRecord.fromSnapshot(s));

  static Future<FoodItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodItemRecord.fromSnapshot(s));

  static FoodItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodItemRecordData({
  String? name,
  double? price,
  int? stock,
  String? img,
  double? salePrice,
  double? salePer,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'stock': stock,
      'img': img,
      'sale_price': salePrice,
      'sale_per': salePer,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodItemRecordDocumentEquality implements Equality<FoodItemRecord> {
  const FoodItemRecordDocumentEquality();

  @override
  bool equals(FoodItemRecord? e1, FoodItemRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.stock == e2?.stock &&
        e1?.img == e2?.img &&
        e1?.salePrice == e2?.salePrice &&
        e1?.salePer == e2?.salePer &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(FoodItemRecord? e) => const ListEquality().hash(
      [e?.name, e?.price, e?.stock, e?.img, e?.salePrice, e?.salePer, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is FoodItemRecord;
}
