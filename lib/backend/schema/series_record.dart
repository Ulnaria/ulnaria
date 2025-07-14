import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeriesRecord extends FirestoreRecord {
  SeriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "x" field.
  List<double>? _x;
  List<double> get x => _x ?? const [];
  bool hasX() => _x != null;

  // "y" field.
  List<double>? _y;
  List<double> get y => _y ?? const [];
  bool hasY() => _y != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _x = getDataList(snapshotData['x']);
    _y = getDataList(snapshotData['y']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('series')
          : FirebaseFirestore.instance.collectionGroup('series');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('series').doc(id);

  static Stream<SeriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeriesRecord.fromSnapshot(s));

  static Future<SeriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeriesRecord.fromSnapshot(s));

  static SeriesRecord fromSnapshot(DocumentSnapshot snapshot) => SeriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeriesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class SeriesRecordDocumentEquality implements Equality<SeriesRecord> {
  const SeriesRecordDocumentEquality();

  @override
  bool equals(SeriesRecord? e1, SeriesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.x, e2?.x) &&
        listEquality.equals(e1?.y, e2?.y);
  }

  @override
  int hash(SeriesRecord? e) => const ListEquality().hash([e?.x, e?.y]);

  @override
  bool isValidKey(Object? o) => o is SeriesRecord;
}
