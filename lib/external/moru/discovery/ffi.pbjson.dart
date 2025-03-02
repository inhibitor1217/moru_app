//
//  Generated code. Do not modify.
//  source: discovery/ffi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use knownPeersRequestDescriptor instead')
const KnownPeersRequest$json = {
  '1': 'KnownPeersRequest',
};

/// Descriptor for `KnownPeersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List knownPeersRequestDescriptor = $convert.base64Decode(
    'ChFLbm93blBlZXJzUmVxdWVzdA==');

@$core.Deprecated('Use knownPeersResultDescriptor instead')
const KnownPeersResult$json = {
  '1': 'KnownPeersResult',
  '2': [
    {'1': 'peers', '3': 1, '4': 3, '5': 11, '6': '.io.inhibitor.moru.discovery.Peer', '10': 'peers'},
  ],
};

/// Descriptor for `KnownPeersResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List knownPeersResultDescriptor = $convert.base64Decode(
    'ChBLbm93blBlZXJzUmVzdWx0EjcKBXBlZXJzGAEgAygLMiEuaW8uaW5oaWJpdG9yLm1vcnUuZG'
    'lzY292ZXJ5LlBlZXJSBXBlZXJz');

