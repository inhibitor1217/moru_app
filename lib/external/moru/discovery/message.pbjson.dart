//
//  Generated code. Do not modify.
//  source: discovery/message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 3, '10': 'sessionId'},
    {'1': 'seqnum', '3': 3, '4': 1, '5': 3, '10': 'seqnum'},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'announcement', '3': 10, '4': 1, '5': 11, '6': '.io.inhibitor.moru.discovery.Announcement', '9': 0, '10': 'announcement'},
  ],
  '8': [
    {'1': 'payload'},
  ],
  '9': [
    {'1': 5, '2': 10},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEg4KAmlkGAEgASgMUgJpZBIdCgpzZXNzaW9uX2lkGAIgASgDUglzZXNzaW9uSW'
    'QSFgoGc2VxbnVtGAMgASgDUgZzZXFudW0SHAoJdGltZXN0YW1wGAQgASgDUgl0aW1lc3RhbXAS'
    'TwoMYW5ub3VuY2VtZW50GAogASgLMikuaW8uaW5oaWJpdG9yLm1vcnUuZGlzY292ZXJ5LkFubm'
    '91bmNlbWVudEgAUgxhbm5vdW5jZW1lbnRCCQoHcGF5bG9hZEoECAUQCg==');

@$core.Deprecated('Use announcementDescriptor instead')
const Announcement$json = {
  '1': 'Announcement',
  '2': [
    {'1': 'peer', '3': 1, '4': 1, '5': 11, '6': '.io.inhibitor.moru.discovery.Peer', '10': 'peer'},
  ],
};

/// Descriptor for `Announcement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List announcementDescriptor = $convert.base64Decode(
    'CgxBbm5vdW5jZW1lbnQSNQoEcGVlchgBIAEoCzIhLmlvLmluaGliaXRvci5tb3J1LmRpc2Nvdm'
    'VyeS5QZWVyUgRwZWVy');

