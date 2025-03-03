import 'dart:typed_data';

import 'package:base32/base32.dart';
import 'package:fixnum/fixnum.dart';

class Peer {
  final DeviceId id;
  final Int64 sessionId;
  final String? address;
  final String? username;
  final String? hostname;
  final String role;

  Peer({
    required Uint8List id,
    required this.sessionId,
    this.address,
    this.username,
    this.hostname,
    required this.role,
  }) : id = DeviceId(raw: id);

  @override
  String toString() {
    return 'Peer{id: $id, sessionId: $sessionId, address: $address, username: $username, hostname: $hostname, role: $role}';
  }

  String get displayName {
    final name = username ?? 'unknown';
    if (hostname != null) {
      return '$name@${hostname!}';
    }
    return name;
  }

  bool get isHost {
    return role == 'host';
  }

  bool get isPeer {
    return role == 'peer';
  }
}

class DeviceId {
  final Uint8List raw;

  DeviceId({
    required this.raw,
  }) : assert(raw.length == 32);

  @override
  String toString() {
    var s = base32.encode(raw);
    s = s.replaceAll('=', '');
    return s.splitMapJoin(
      RegExp(r'.{8}'),
      onMatch: (m) => '${m.group(0)}-',
      onNonMatch: (n) => n,
    );
  }

  String get shortRepresentation {
    return toString().substring(0, 8);
  }
}
