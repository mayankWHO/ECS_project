import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceStatusRecord extends FirestoreRecord {
  DeviceStatusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "connected" field.
  bool? _connected;
  bool get connected => _connected ?? false;
  bool hasConnected() => _connected != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _connected = snapshotData['connected'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deviceStatus');

  static Stream<DeviceStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceStatusRecord.fromSnapshot(s));

  static Future<DeviceStatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeviceStatusRecord.fromSnapshot(s));

  static DeviceStatusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeviceStatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceStatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceStatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceStatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceStatusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeviceStatusRecordData({
  String? userID,
  bool? connected,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'connected': connected,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeviceStatusRecordDocumentEquality
    implements Equality<DeviceStatusRecord> {
  const DeviceStatusRecordDocumentEquality();

  @override
  bool equals(DeviceStatusRecord? e1, DeviceStatusRecord? e2) {
    return e1?.userID == e2?.userID && e1?.connected == e2?.connected;
  }

  @override
  int hash(DeviceStatusRecord? e) =>
      const ListEquality().hash([e?.userID, e?.connected]);

  @override
  bool isValidKey(Object? o) => o is DeviceStatusRecord;
}
