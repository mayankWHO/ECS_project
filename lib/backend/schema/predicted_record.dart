import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictedRecord extends FirestoreRecord {
  PredictedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "predictedTime" field.
  String? _predictedTime;
  String get predictedTime => _predictedTime ?? '';
  bool hasPredictedTime() => _predictedTime != null;

  // "session" field.
  String? _session;
  String get session => _session ?? '';
  bool hasSession() => _session != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _predictedTime = snapshotData['predictedTime'] as String?;
    _session = snapshotData['session'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('predicted');

  static Stream<PredictedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PredictedRecord.fromSnapshot(s));

  static Future<PredictedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PredictedRecord.fromSnapshot(s));

  static PredictedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PredictedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PredictedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PredictedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PredictedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PredictedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPredictedRecordData({
  String? userID,
  String? predictedTime,
  String? session,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'predictedTime': predictedTime,
      'session': session,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class PredictedRecordDocumentEquality implements Equality<PredictedRecord> {
  const PredictedRecordDocumentEquality();

  @override
  bool equals(PredictedRecord? e1, PredictedRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.predictedTime == e2?.predictedTime &&
        e1?.session == e2?.session &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(PredictedRecord? e) => const ListEquality()
      .hash([e?.userID, e?.predictedTime, e?.session, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is PredictedRecord;
}
