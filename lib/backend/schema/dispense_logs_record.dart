import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DispenseLogsRecord extends FirestoreRecord {
  DispenseLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "medicineName" field.
  String? _medicineName;
  String get medicineName => _medicineName ?? '';
  bool hasMedicineName() => _medicineName != null;

  // "compartment" field.
  int? _compartment;
  int get compartment => _compartment ?? 0;
  bool hasCompartment() => _compartment != null;

  // "scheduledTime" field.
  DateTime? _scheduledTime;
  DateTime? get scheduledTime => _scheduledTime;
  bool hasScheduledTime() => _scheduledTime != null;

  // "actualTime" field.
  DateTime? _actualTime;
  DateTime? get actualTime => _actualTime;
  bool hasActualTime() => _actualTime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _medicineName = snapshotData['medicineName'] as String?;
    _compartment = castToType<int>(snapshotData['compartment']);
    _scheduledTime = snapshotData['scheduledTime'] as DateTime?;
    _actualTime = snapshotData['actualTime'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dispenseLogs');

  static Stream<DispenseLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DispenseLogsRecord.fromSnapshot(s));

  static Future<DispenseLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DispenseLogsRecord.fromSnapshot(s));

  static DispenseLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DispenseLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DispenseLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DispenseLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DispenseLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DispenseLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDispenseLogsRecordData({
  String? userID,
  String? medicineName,
  int? compartment,
  DateTime? scheduledTime,
  DateTime? actualTime,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'medicineName': medicineName,
      'compartment': compartment,
      'scheduledTime': scheduledTime,
      'actualTime': actualTime,
      'status': status,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class DispenseLogsRecordDocumentEquality
    implements Equality<DispenseLogsRecord> {
  const DispenseLogsRecordDocumentEquality();

  @override
  bool equals(DispenseLogsRecord? e1, DispenseLogsRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.medicineName == e2?.medicineName &&
        e1?.compartment == e2?.compartment &&
        e1?.scheduledTime == e2?.scheduledTime &&
        e1?.actualTime == e2?.actualTime &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(DispenseLogsRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.medicineName,
        e?.compartment,
        e?.scheduledTime,
        e?.actualTime,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is DispenseLogsRecord;
}
