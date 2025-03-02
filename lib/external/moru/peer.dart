import 'package:fixnum/fixnum.dart';

class Peer {
  List<int> id;
  Int64 sessionId;
  String? address;
  String? username;
  String? hostname;
  String role;

  Peer({
    required this.id,
    required this.sessionId,
    this.address,
    this.username,
    this.hostname,
    required this.role,
  });

  @override
  String toString() {
    return 'Peer{id: $id, sessionId: $sessionId, address: $address, username: $username, hostname: $hostname, role: $role}';
  }
}