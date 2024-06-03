import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UrunlerRecord extends FirestoreRecord {
  UrunlerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "imgPath" field.
  String? _imgPath;
  String get imgPath => _imgPath ?? '';
  bool hasImgPath() => _imgPath != null;

  // "likes" field.
  String? _likes;
  String get likes => _likes ?? '';
  bool hasLikes() => _likes != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "ppPath" field.
  String? _ppPath;
  String get ppPath => _ppPath ?? '';
  bool hasPpPath() => _ppPath != null;

  // "postedName" field.
  String? _postedName;
  String get postedName => _postedName ?? '';
  bool hasPostedName() => _postedName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _imgPath = snapshotData['imgPath'] as String?;
    _likes = snapshotData['likes'] as String?;
    _date = snapshotData['date'] as String?;
    _ppPath = snapshotData['ppPath'] as String?;
    _postedName = snapshotData['postedName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('urunler');

  static Stream<UrunlerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UrunlerRecord.fromSnapshot(s));

  static Future<UrunlerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UrunlerRecord.fromSnapshot(s));

  static UrunlerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UrunlerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UrunlerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UrunlerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UrunlerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UrunlerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUrunlerRecordData({
  String? name,
  String? imgPath,
  String? likes,
  String? date,
  String? ppPath,
  String? postedName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'imgPath': imgPath,
      'likes': likes,
      'date': date,
      'ppPath': ppPath,
      'postedName': postedName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UrunlerRecordDocumentEquality implements Equality<UrunlerRecord> {
  const UrunlerRecordDocumentEquality();

  @override
  bool equals(UrunlerRecord? e1, UrunlerRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.imgPath == e2?.imgPath &&
        e1?.likes == e2?.likes &&
        e1?.date == e2?.date &&
        e1?.ppPath == e2?.ppPath &&
        e1?.postedName == e2?.postedName;
  }

  @override
  int hash(UrunlerRecord? e) => const ListEquality()
      .hash([e?.name, e?.imgPath, e?.likes, e?.date, e?.ppPath, e?.postedName]);

  @override
  bool isValidKey(Object? o) => o is UrunlerRecord;
}
