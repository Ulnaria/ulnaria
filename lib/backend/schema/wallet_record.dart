import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// the user ethereum wallet
class WalletRecord extends FirestoreRecord {
  WalletRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assetname" field.
  List<String>? _assetname;
  List<String> get assetname => _assetname ?? const [];
  bool hasAssetname() => _assetname != null;

  // "symbol" field.
  List<String>? _symbol;
  List<String> get symbol => _symbol ?? const [];
  bool hasSymbol() => _symbol != null;

  // "logo" field.
  List<String>? _logo;
  List<String> get logo => _logo ?? const [];
  bool hasLogo() => _logo != null;

  // "balance" field.
  List<int>? _balance;
  List<int> get balance => _balance ?? const [];
  bool hasBalance() => _balance != null;

  // "usd_balance" field.
  List<int>? _usdBalance;
  List<int> get usdBalance => _usdBalance ?? const [];
  bool hasUsdBalance() => _usdBalance != null;

  // "price" field.
  List<int>? _price;
  List<int> get price => _price ?? const [];
  bool hasPrice() => _price != null;

  // "price_24h_chng" field.
  List<int>? _price24hChng;
  List<int> get price24hChng => _price24hChng ?? const [];
  bool hasPrice24hChng() => _price24hChng != null;

  // "balance_usd_24h_chg" field.
  List<int>? _balanceUsd24hChg;
  List<int> get balanceUsd24hChg => _balanceUsd24hChg ?? const [];
  bool hasBalanceUsd24hChg() => _balanceUsd24hChg != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _assetname = getDataList(snapshotData['assetname']);
    _symbol = getDataList(snapshotData['symbol']);
    _logo = getDataList(snapshotData['logo']);
    _balance = getDataList(snapshotData['balance']);
    _usdBalance = getDataList(snapshotData['usd_balance']);
    _price = getDataList(snapshotData['price']);
    _price24hChng = getDataList(snapshotData['price_24h_chng']);
    _balanceUsd24hChg = getDataList(snapshotData['balance_usd_24h_chg']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('wallet')
          : FirebaseFirestore.instance.collectionGroup('wallet');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('wallet').doc(id);

  static Stream<WalletRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WalletRecord.fromSnapshot(s));

  static Future<WalletRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WalletRecord.fromSnapshot(s));

  static WalletRecord fromSnapshot(DocumentSnapshot snapshot) => WalletRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WalletRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WalletRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WalletRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WalletRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWalletRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class WalletRecordDocumentEquality implements Equality<WalletRecord> {
  const WalletRecordDocumentEquality();

  @override
  bool equals(WalletRecord? e1, WalletRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.assetname, e2?.assetname) &&
        listEquality.equals(e1?.symbol, e2?.symbol) &&
        listEquality.equals(e1?.logo, e2?.logo) &&
        listEquality.equals(e1?.balance, e2?.balance) &&
        listEquality.equals(e1?.usdBalance, e2?.usdBalance) &&
        listEquality.equals(e1?.price, e2?.price) &&
        listEquality.equals(e1?.price24hChng, e2?.price24hChng) &&
        listEquality.equals(e1?.balanceUsd24hChg, e2?.balanceUsd24hChg);
  }

  @override
  int hash(WalletRecord? e) => const ListEquality().hash([
        e?.assetname,
        e?.symbol,
        e?.logo,
        e?.balance,
        e?.usdBalance,
        e?.price,
        e?.price24hChng,
        e?.balanceUsd24hChg
      ]);

  @override
  bool isValidKey(Object? o) => o is WalletRecord;
}
