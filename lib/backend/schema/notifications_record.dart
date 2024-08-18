import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "notification_id" field.
  String? _notificationId;
  String get notificationId => _notificationId ?? '';
  bool hasNotificationId() => _notificationId != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "time_in" field.
  DateTime? _timeIn;
  DateTime? get timeIn => _timeIn;
  bool hasTimeIn() => _timeIn != null;

  // "time_out" field.
  DateTime? _timeOut;
  DateTime? get timeOut => _timeOut;
  bool hasTimeOut() => _timeOut != null;

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "id_number" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  bool hasIdNumber() => _idNumber != null;

  void _initializeFields() {
    _notificationId = snapshotData['notification_id'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _link = snapshotData['link'] as String?;
    _type = snapshotData['type'] as String?;
    _timeIn = snapshotData['time_in'] as DateTime?;
    _timeOut = snapshotData['time_out'] as DateTime?;
    _studentName = snapshotData['student_name'] as String?;
    _grade = snapshotData['grade'] as String?;
    _idNumber = snapshotData['id_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? notificationId,
  DateTime? timeCreated,
  DocumentReference? sender,
  String? message,
  String? link,
  String? type,
  DateTime? timeIn,
  DateTime? timeOut,
  String? studentName,
  String? grade,
  String? idNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'notification_id': notificationId,
      'time_created': timeCreated,
      'sender': sender,
      'message': message,
      'link': link,
      'type': type,
      'time_in': timeIn,
      'time_out': timeOut,
      'student_name': studentName,
      'grade': grade,
      'id_number': idNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.notificationId == e2?.notificationId &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.sender == e2?.sender &&
        e1?.message == e2?.message &&
        e1?.link == e2?.link &&
        e1?.type == e2?.type &&
        e1?.timeIn == e2?.timeIn &&
        e1?.timeOut == e2?.timeOut &&
        e1?.studentName == e2?.studentName &&
        e1?.grade == e2?.grade &&
        e1?.idNumber == e2?.idNumber;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.notificationId,
        e?.timeCreated,
        e?.sender,
        e?.message,
        e?.link,
        e?.type,
        e?.timeIn,
        e?.timeOut,
        e?.studentName,
        e?.grade,
        e?.idNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
