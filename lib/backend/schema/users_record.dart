import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "id_number" field.
  int? _idNumber;
  int get idNumber => _idNumber ?? 0;
  bool hasIdNumber() => _idNumber != null;

  // "guardian_name" field.
  String? _guardianName;
  String get guardianName => _guardianName ?? '';
  bool hasGuardianName() => _guardianName != null;

  // "g_mobile" field.
  String? _gMobile;
  String get gMobile => _gMobile ?? '';
  bool hasGMobile() => _gMobile != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "subscribed" field.
  bool? _subscribed;
  bool get subscribed => _subscribed ?? false;
  bool hasSubscribed() => _subscribed != null;

  // "gradelevel" field.
  String? _gradelevel;
  String get gradelevel => _gradelevel ?? '';
  bool hasGradelevel() => _gradelevel != null;

  // "unread_notiff" field.
  int? _unreadNotiff;
  int get unreadNotiff => _unreadNotiff ?? 0;
  bool hasUnreadNotiff() => _unreadNotiff != null;

  // "updated" field.
  bool? _updated;
  bool get updated => _updated ?? false;
  bool hasUpdated() => _updated != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _idNumber = castToType<int>(snapshotData['id_number']);
    _guardianName = snapshotData['guardian_name'] as String?;
    _gMobile = snapshotData['g_mobile'] as String?;
    _address = snapshotData['address'] as String?;
    _subscribed = snapshotData['subscribed'] as bool?;
    _gradelevel = snapshotData['gradelevel'] as String?;
    _unreadNotiff = castToType<int>(snapshotData['unread_notiff']);
    _updated = snapshotData['updated'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActiveTime,
  int? idNumber,
  String? guardianName,
  String? gMobile,
  String? address,
  bool? subscribed,
  String? gradelevel,
  int? unreadNotiff,
  bool? updated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'last_active_time': lastActiveTime,
      'id_number': idNumber,
      'guardian_name': guardianName,
      'g_mobile': gMobile,
      'address': address,
      'subscribed': subscribed,
      'gradelevel': gradelevel,
      'unread_notiff': unreadNotiff,
      'updated': updated,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.idNumber == e2?.idNumber &&
        e1?.guardianName == e2?.guardianName &&
        e1?.gMobile == e2?.gMobile &&
        e1?.address == e2?.address &&
        e1?.subscribed == e2?.subscribed &&
        e1?.gradelevel == e2?.gradelevel &&
        e1?.unreadNotiff == e2?.unreadNotiff &&
        e1?.updated == e2?.updated;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActiveTime,
        e?.idNumber,
        e?.guardianName,
        e?.gMobile,
        e?.address,
        e?.subscribed,
        e?.gradelevel,
        e?.unreadNotiff,
        e?.updated
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
