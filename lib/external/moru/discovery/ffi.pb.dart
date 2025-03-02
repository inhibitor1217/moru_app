//
//  Generated code. Do not modify.
//  source: discovery/ffi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'peer.pb.dart' as $0;

/// KnownPeersRequest is a request for KnownPeers() FFI function.
class KnownPeersRequest extends $pb.GeneratedMessage {
  factory KnownPeersRequest() => create();
  KnownPeersRequest._() : super();
  factory KnownPeersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KnownPeersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KnownPeersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'io.inhibitor.moru.discovery'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KnownPeersRequest clone() => KnownPeersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KnownPeersRequest copyWith(void Function(KnownPeersRequest) updates) => super.copyWith((message) => updates(message as KnownPeersRequest)) as KnownPeersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KnownPeersRequest create() => KnownPeersRequest._();
  KnownPeersRequest createEmptyInstance() => create();
  static $pb.PbList<KnownPeersRequest> createRepeated() => $pb.PbList<KnownPeersRequest>();
  @$core.pragma('dart2js:noInline')
  static KnownPeersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KnownPeersRequest>(create);
  static KnownPeersRequest? _defaultInstance;
}

/// KnownPeersResult is a result of KnownPeers() FFI function.
class KnownPeersResult extends $pb.GeneratedMessage {
  factory KnownPeersResult({
    $core.Iterable<$0.Peer>? peers,
  }) {
    final $result = create();
    if (peers != null) {
      $result.peers.addAll(peers);
    }
    return $result;
  }
  KnownPeersResult._() : super();
  factory KnownPeersResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KnownPeersResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KnownPeersResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'io.inhibitor.moru.discovery'), createEmptyInstance: create)
    ..pc<$0.Peer>(1, _omitFieldNames ? '' : 'peers', $pb.PbFieldType.PM, subBuilder: $0.Peer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KnownPeersResult clone() => KnownPeersResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KnownPeersResult copyWith(void Function(KnownPeersResult) updates) => super.copyWith((message) => updates(message as KnownPeersResult)) as KnownPeersResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KnownPeersResult create() => KnownPeersResult._();
  KnownPeersResult createEmptyInstance() => create();
  static $pb.PbList<KnownPeersResult> createRepeated() => $pb.PbList<KnownPeersResult>();
  @$core.pragma('dart2js:noInline')
  static KnownPeersResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KnownPeersResult>(create);
  static KnownPeersResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.Peer> get peers => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
