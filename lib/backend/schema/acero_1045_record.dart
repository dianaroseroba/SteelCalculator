import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../flutter_utils/flutter_util.dart';

class Acero1045Record extends FirestoreRecord {
  Acero1045Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "diameter" field.
  List<String>? _diameter;
  List<String> get diameter => _diameter ?? const [];
  bool hasDiameter() => _diameter != null;

  // "weightxcm" field.
  List<double>? _weightxcm;
  List<double> get weightxcm => _weightxcm ?? const [];
  bool hasWeightxcm() => _weightxcm != null;

  // "pricexkg" field.
  double? _pricexkg;
  double get pricexkg => _pricexkg ?? 0.0;
  bool hasPricexkg() => _pricexkg != null;

  void _initializeFields() {
    _diameter = getDataList(snapshotData['diameter']);
    _weightxcm = getDataList(snapshotData['weightxcm']);
    _pricexkg = castToType<double>(snapshotData['pricexkg']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('acero_1045');

  static Stream<Acero1045Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Acero1045Record.fromSnapshot(s));

  static Future<Acero1045Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Acero1045Record.fromSnapshot(s));

  static Acero1045Record fromSnapshot(DocumentSnapshot snapshot) =>
      Acero1045Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Acero1045Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Acero1045Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Acero1045Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Acero1045Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAcero1045RecordData({
  double? pricexkg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pricexkg': pricexkg,
    }.withoutNulls,
  );

  return firestoreData;
}

class Acero1045RecordDocumentEquality implements Equality<Acero1045Record> {
  const Acero1045RecordDocumentEquality();

  @override
  bool equals(Acero1045Record? e1, Acero1045Record? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.diameter, e2?.diameter) &&
        listEquality.equals(e1?.weightxcm, e2?.weightxcm) &&
        e1?.pricexkg == e2?.pricexkg;
  }

  @override
  int hash(Acero1045Record? e) =>
      const ListEquality().hash([e?.diameter, e?.weightxcm, e?.pricexkg]);

  @override
  bool isValidKey(Object? o) => o is Acero1045Record;
}
