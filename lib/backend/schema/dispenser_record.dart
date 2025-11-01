import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DispenserRecord extends FirestoreRecord {
  DispenserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dayCounter" field.
  int? _dayCounter;
  int get dayCounter => _dayCounter ?? 0;
  bool hasDayCounter() => _dayCounter != null;

  // "lastDispense" field.
  String? _lastDispense;
  String get lastDispense => _lastDispense ?? '';
  bool hasLastDispense() => _lastDispense != null;

  // "lastPickup" field.
  String? _lastPickup;
  String get lastPickup => _lastPickup ?? '';
  bool hasLastPickup() => _lastPickup != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _dayCounter = castToType<int>(snapshotData['dayCounter']);
    _lastDispense = snapshotData['lastDispense'] as String?;
    _lastPickup = snapshotData['lastPickup'] as String?;
    _status = snapshotData['status'] as String?;
    _timestamp = snapshotData['timestamp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dispenser');

  static Stream<DispenserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DispenserRecord.fromSnapshot(s));

  static Future<DispenserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DispenserRecord.fromSnapshot(s));

  static DispenserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DispenserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DispenserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DispenserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DispenserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DispenserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDispenserRecordData({
  int? dayCounter,
  String? lastDispense,
  String? lastPickup,
  String? status,
  String? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dayCounter': dayCounter,
      'lastDispense': lastDispense,
      'lastPickup': lastPickup,
      'status': status,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class DispenserRecordDocumentEquality implements Equality<DispenserRecord> {
  const DispenserRecordDocumentEquality();

  @override
  bool equals(DispenserRecord? e1, DispenserRecord? e2) {
    return e1?.dayCounter == e2?.dayCounter &&
        e1?.lastDispense == e2?.lastDispense &&
        e1?.lastPickup == e2?.lastPickup &&
        e1?.status == e2?.status &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(DispenserRecord? e) => const ListEquality().hash(
      [e?.dayCounter, e?.lastDispense, e?.lastPickup, e?.status, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is DispenserRecord;
}
