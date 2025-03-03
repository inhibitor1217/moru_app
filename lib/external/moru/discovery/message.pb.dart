//
//  Generated code. Do not modify.
//  source: discovery/message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'peer.pb.dart' as $0;

enum Message_Payload {
  announcement, 
  notSet
}

/// Message represents a message broadcasted by a peer.
class Message extends $pb.GeneratedMessage {
  factory Message({
    $core.List<$core.int>? id,
    $fixnum.Int64? sessionId,
    $fixnum.Int64? seqnum,
    $fixnum.Int64? timestamp,
    Announcement? announcement,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (seqnum != null) {
      $result.seqnum = seqnum;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (announcement != null) {
      $result.announcement = announcement;
    }
    return $result;
  }
  Message._() : super();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Message_Payload> _Message_PayloadByTag = {
    10 : Message_Payload.announcement,
    0 : Message_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'io.inhibitor.moru.discovery'), createEmptyInstance: create)
    ..oo(0, [10])
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OY)
    ..aInt64(2, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(3, _omitFieldNames ? '' : 'seqnum')
    ..aInt64(4, _omitFieldNames ? '' : 'timestamp')
    ..aOM<Announcement>(10, _omitFieldNames ? '' : 'announcement', subBuilder: Announcement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  Message_Payload whichPayload() => _Message_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sessionId => $_getI64(1);
  @$pb.TagNumber(2)
  set sessionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get seqnum => $_getI64(2);
  @$pb.TagNumber(3)
  set seqnum($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeqnum() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeqnum() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get timestamp => $_getI64(3);
  @$pb.TagNumber(4)
  set timestamp($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);

  @$pb.TagNumber(10)
  Announcement get announcement => $_getN(4);
  @$pb.TagNumber(10)
  set announcement(Announcement v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAnnouncement() => $_has(4);
  @$pb.TagNumber(10)
  void clearAnnouncement() => clearField(10);
  @$pb.TagNumber(10)
  Announcement ensureAnnouncement() => $_ensure(4);
}

/// Announces a peer.
class Announcement extends $pb.GeneratedMessage {
  factory Announcement({
    $0.Peer? peer,
  }) {
    final $result = create();
    if (peer != null) {
      $result.peer = peer;
    }
    return $result;
  }
  Announcement._() : super();
  factory Announcement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Announcement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Announcement', package: const $pb.PackageName(_omitMessageNames ? '' : 'io.inhibitor.moru.discovery'), createEmptyInstance: create)
    ..aOM<$0.Peer>(1, _omitFieldNames ? '' : 'peer', subBuilder: $0.Peer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Announcement clone() => Announcement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Announcement copyWith(void Function(Announcement) updates) => super.copyWith((message) => updates(message as Announcement)) as Announcement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Announcement create() => Announcement._();
  Announcement createEmptyInstance() => create();
  static $pb.PbList<Announcement> createRepeated() => $pb.PbList<Announcement>();
  @$core.pragma('dart2js:noInline')
  static Announcement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Announcement>(create);
  static Announcement? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Peer get peer => $_getN(0);
  @$pb.TagNumber(1)
  set peer($0.Peer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeer() => clearField(1);
  @$pb.TagNumber(1)
  $0.Peer ensurePeer() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
