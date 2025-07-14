import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceChartRecord extends FirestoreRecord {
  PriceChartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "series" field.
  List<DocumentReference>? _series;
  List<DocumentReference> get series => _series ?? const [];
  bool hasSeries() => _series != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _series = getDataList(snapshotData['series']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Price_chart');

  static Stream<PriceChartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PriceChartRecord.fromSnapshot(s));

  static Future<PriceChartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PriceChartRecord.fromSnapshot(s));

  static PriceChartRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PriceChartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PriceChartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PriceChartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PriceChartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PriceChartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPriceChartRecordData({
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class PriceChartRecordDocumentEquality implements Equality<PriceChartRecord> {
  const PriceChartRecordDocumentEquality();

  @override
  bool equals(PriceChartRecord? e1, PriceChartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        listEquality.equals(e1?.series, e2?.series);
  }

  @override
  int hash(PriceChartRecord? e) =>
      const ListEquality().hash([e?.title, e?.series]);

  @override
  bool isValidKey(Object? o) => o is PriceChartRecord;
}
