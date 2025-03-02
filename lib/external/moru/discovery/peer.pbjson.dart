//
//  Generated code. Do not modify.
//  source: discovery/peer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use peerDescriptor instead')
const Peer$json = {
  '1': 'Peer',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 3, '10': 'sessionId'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    {'1': 'username', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'username', '17': true},
    {'1': 'hostname', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'hostname', '17': true},
    {'1': 'role', '3': 6, '4': 1, '5': 9, '10': 'role'},
  ],
  '8': [
    {'1': '_username'},
    {'1': '_hostname'},
  ],
};

/// Descriptor for `Peer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerDescriptor = $convert.base64Decode(
    'CgRQZWVyEg4KAmlkGAEgASgMUgJpZBIdCgpzZXNzaW9uX2lkGAIgASgDUglzZXNzaW9uSWQSGA'
    'oHYWRkcmVzcxgDIAEoCVIHYWRkcmVzcxIfCgh1c2VybmFtZRgEIAEoCUgAUgh1c2VybmFtZYgB'
    'ARIfCghob3N0bmFtZRgFIAEoCUgBUghob3N0bmFtZYgBARISCgRyb2xlGAYgASgJUgRyb2xlQg'
    'sKCV91c2VybmFtZUILCglfaG9zdG5hbWU=');

