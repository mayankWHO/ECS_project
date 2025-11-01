import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationsRecord extends FirestoreRecord {
  MedicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "hour" field.
  int? _hour;
  int get hour => _hour ?? 0;
  bool hasHour() => _hour != null;

  // "minute" field.
  int? _minute;
  int get minute => _minute ?? 0;
  bool hasMinute() => _minute != null;

  // "session" field.
  String? _session;
  String get session => _session ?? '';
  bool hasSession() => _session != null;

  // "doseName" field.
  String? _doseName;
  String get doseName => _doseName ?? '';
  bool hasDoseName() => _doseName != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "compartment" field.
  int? _compartment;
  int get compartment => _compartment ?? 0;
  bool hasCompartment() => _compartment != null;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _userID = snapshotData['userID'] as String?;
    _hour = castToType<int>(snapshotData['hour']);
    _minute = castToType<int>(snapshotData['minute']);
    _session = snapshotData['session'] as String?;
    _doseName = snapshotData['doseName'] as String?;
    _notes = snapshotData['notes'] as String?;
    _status = snapshotData['status'] as String?;
    _compartment = castToType<int>(snapshotData['compartment']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medications');

  static Stream<MedicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicationsRecord.fromSnapshot(s));

  static Future<MedicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicationsRecord.fromSnapshot(s));

  static MedicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicationsRecordData({
  DateTime? createdAt,
  String? userID,
  int? hour,
  int? minute,
  String? session,
  String? doseName,
  String? notes,
  String? status,
  int? compartment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'userID': userID,
      'hour': hour,
      'minute': minute,
      'session': session,
      'doseName': doseName,
      'notes': notes,
      'status': status,
      'compartment': compartment,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicationsRecordDocumentEquality implements Equality<MedicationsRecord> {
  const MedicationsRecordDocumentEquality();

  @override
  bool equals(MedicationsRecord? e1, MedicationsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.userID == e2?.userID &&
        e1?.hour == e2?.hour &&
        e1?.minute == e2?.minute &&
        e1?.session == e2?.session &&
        e1?.doseName == e2?.doseName &&
        e1?.notes == e2?.notes &&
        e1?.status == e2?.status &&
        e1?.compartment == e2?.compartment;
  }

  @override
  int hash(MedicationsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.userID,
        e?.hour,
        e?.minute,
        e?.session,
        e?.doseName,
        e?.notes,
        e?.status,
        e?.compartment
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicationsRecord;
}
