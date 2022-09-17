///
//  Generated code. Do not modify.
//  source: queue.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class QueueListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueueListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueueListRequest._() : super();
  factory QueueListRequest() => create();
  factory QueueListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueueListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueueListRequest clone() => QueueListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueueListRequest copyWith(void Function(QueueListRequest) updates) => super.copyWith((message) => updates(message as QueueListRequest)) as QueueListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueueListRequest create() => QueueListRequest._();
  QueueListRequest createEmptyInstance() => create();
  static $pb.PbList<QueueListRequest> createRepeated() => $pb.PbList<QueueListRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueueListRequest>(create);
  static QueueListRequest? _defaultInstance;
}

class QueueListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueueListResponse', createEmptyInstance: create)
    ..m<$core.String, $core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queuelist', entryClassName: 'QueueListResponse.QueuelistEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  QueueListResponse._() : super();
  factory QueueListResponse({
    $core.Map<$core.String, $core.int>? queuelist,
  }) {
    final _result = create();
    if (queuelist != null) {
      _result.queuelist.addAll(queuelist);
    }
    return _result;
  }
  factory QueueListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueueListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueueListResponse clone() => QueueListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueueListResponse copyWith(void Function(QueueListResponse) updates) => super.copyWith((message) => updates(message as QueueListResponse)) as QueueListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueueListResponse create() => QueueListResponse._();
  QueueListResponse createEmptyInstance() => create();
  static $pb.PbList<QueueListResponse> createRepeated() => $pb.PbList<QueueListResponse>();
  @$core.pragma('dart2js:noInline')
  static QueueListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueueListResponse>(create);
  static QueueListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.int> get queuelist => $_getMap(0);
}

class ResetQueueRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetQueueRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResetQueueRequest._() : super();
  factory ResetQueueRequest() => create();
  factory ResetQueueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetQueueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetQueueRequest clone() => ResetQueueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetQueueRequest copyWith(void Function(ResetQueueRequest) updates) => super.copyWith((message) => updates(message as ResetQueueRequest)) as ResetQueueRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetQueueRequest create() => ResetQueueRequest._();
  ResetQueueRequest createEmptyInstance() => create();
  static $pb.PbList<ResetQueueRequest> createRepeated() => $pb.PbList<ResetQueueRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetQueueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetQueueRequest>(create);
  static ResetQueueRequest? _defaultInstance;
}

class ResetQueueResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetQueueResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResetQueueResponse._() : super();
  factory ResetQueueResponse() => create();
  factory ResetQueueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetQueueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetQueueResponse clone() => ResetQueueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetQueueResponse copyWith(void Function(ResetQueueResponse) updates) => super.copyWith((message) => updates(message as ResetQueueResponse)) as ResetQueueResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetQueueResponse create() => ResetQueueResponse._();
  ResetQueueResponse createEmptyInstance() => create();
  static $pb.PbList<ResetQueueResponse> createRepeated() => $pb.PbList<ResetQueueResponse>();
  @$core.pragma('dart2js:noInline')
  static ResetQueueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetQueueResponse>(create);
  static ResetQueueResponse? _defaultInstance;
}

class UpdateQueueRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateQueueRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateQueueRequest._() : super();
  factory UpdateQueueRequest() => create();
  factory UpdateQueueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateQueueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateQueueRequest clone() => UpdateQueueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateQueueRequest copyWith(void Function(UpdateQueueRequest) updates) => super.copyWith((message) => updates(message as UpdateQueueRequest)) as UpdateQueueRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateQueueRequest create() => UpdateQueueRequest._();
  UpdateQueueRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateQueueRequest> createRepeated() => $pb.PbList<UpdateQueueRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateQueueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateQueueRequest>(create);
  static UpdateQueueRequest? _defaultInstance;
}

class UpdateQueueResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateQueueResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateQueueResponse._() : super();
  factory UpdateQueueResponse() => create();
  factory UpdateQueueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateQueueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateQueueResponse clone() => UpdateQueueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateQueueResponse copyWith(void Function(UpdateQueueResponse) updates) => super.copyWith((message) => updates(message as UpdateQueueResponse)) as UpdateQueueResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateQueueResponse create() => UpdateQueueResponse._();
  UpdateQueueResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateQueueResponse> createRepeated() => $pb.PbList<UpdateQueueResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateQueueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateQueueResponse>(create);
  static UpdateQueueResponse? _defaultInstance;
}

class LoadQueueRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadQueueRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LoadQueueRequest._() : super();
  factory LoadQueueRequest() => create();
  factory LoadQueueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadQueueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadQueueRequest clone() => LoadQueueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadQueueRequest copyWith(void Function(LoadQueueRequest) updates) => super.copyWith((message) => updates(message as LoadQueueRequest)) as LoadQueueRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadQueueRequest create() => LoadQueueRequest._();
  LoadQueueRequest createEmptyInstance() => create();
  static $pb.PbList<LoadQueueRequest> createRepeated() => $pb.PbList<LoadQueueRequest>();
  @$core.pragma('dart2js:noInline')
  static LoadQueueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadQueueRequest>(create);
  static LoadQueueRequest? _defaultInstance;
}

class LoadQueueResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoadQueueResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Queue', $pb.PbFieldType.OU3, protoName: 'Queue')
    ..hasRequiredFields = false
  ;

  LoadQueueResponse._() : super();
  factory LoadQueueResponse({
    $core.int? queue,
  }) {
    final _result = create();
    if (queue != null) {
      _result.queue = queue;
    }
    return _result;
  }
  factory LoadQueueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadQueueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadQueueResponse clone() => LoadQueueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadQueueResponse copyWith(void Function(LoadQueueResponse) updates) => super.copyWith((message) => updates(message as LoadQueueResponse)) as LoadQueueResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoadQueueResponse create() => LoadQueueResponse._();
  LoadQueueResponse createEmptyInstance() => create();
  static $pb.PbList<LoadQueueResponse> createRepeated() => $pb.PbList<LoadQueueResponse>();
  @$core.pragma('dart2js:noInline')
  static LoadQueueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadQueueResponse>(create);
  static LoadQueueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get queue => $_getIZ(0);
  @$pb.TagNumber(1)
  set queue($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);
}

class GetQueueRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetQueueRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetQueueRequest._() : super();
  factory GetQueueRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GetQueueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetQueueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetQueueRequest clone() => GetQueueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetQueueRequest copyWith(void Function(GetQueueRequest) updates) => super.copyWith((message) => updates(message as GetQueueRequest)) as GetQueueRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetQueueRequest create() => GetQueueRequest._();
  GetQueueRequest createEmptyInstance() => create();
  static $pb.PbList<GetQueueRequest> createRepeated() => $pb.PbList<GetQueueRequest>();
  @$core.pragma('dart2js:noInline')
  static GetQueueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetQueueRequest>(create);
  static GetQueueRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetQueueResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetQueueResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Queue', $pb.PbFieldType.OU3, protoName: 'Queue')
    ..hasRequiredFields = false
  ;

  GetQueueResponse._() : super();
  factory GetQueueResponse({
    $core.int? queue,
  }) {
    final _result = create();
    if (queue != null) {
      _result.queue = queue;
    }
    return _result;
  }
  factory GetQueueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetQueueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetQueueResponse clone() => GetQueueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetQueueResponse copyWith(void Function(GetQueueResponse) updates) => super.copyWith((message) => updates(message as GetQueueResponse)) as GetQueueResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetQueueResponse create() => GetQueueResponse._();
  GetQueueResponse createEmptyInstance() => create();
  static $pb.PbList<GetQueueResponse> createRepeated() => $pb.PbList<GetQueueResponse>();
  @$core.pragma('dart2js:noInline')
  static GetQueueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetQueueResponse>(create);
  static GetQueueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get queue => $_getIZ(0);
  @$pb.TagNumber(1)
  set queue($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);
}

class StreamQueueRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamQueueRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StreamQueueRequest._() : super();
  factory StreamQueueRequest() => create();
  factory StreamQueueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamQueueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamQueueRequest clone() => StreamQueueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamQueueRequest copyWith(void Function(StreamQueueRequest) updates) => super.copyWith((message) => updates(message as StreamQueueRequest)) as StreamQueueRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamQueueRequest create() => StreamQueueRequest._();
  StreamQueueRequest createEmptyInstance() => create();
  static $pb.PbList<StreamQueueRequest> createRepeated() => $pb.PbList<StreamQueueRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamQueueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamQueueRequest>(create);
  static StreamQueueRequest? _defaultInstance;
}

class StreamQueueResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamQueueResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Queue', $pb.PbFieldType.OU3, protoName: 'Queue')
    ..hasRequiredFields = false
  ;

  StreamQueueResponse._() : super();
  factory StreamQueueResponse({
    $core.int? queue,
  }) {
    final _result = create();
    if (queue != null) {
      _result.queue = queue;
    }
    return _result;
  }
  factory StreamQueueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamQueueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamQueueResponse clone() => StreamQueueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamQueueResponse copyWith(void Function(StreamQueueResponse) updates) => super.copyWith((message) => updates(message as StreamQueueResponse)) as StreamQueueResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamQueueResponse create() => StreamQueueResponse._();
  StreamQueueResponse createEmptyInstance() => create();
  static $pb.PbList<StreamQueueResponse> createRepeated() => $pb.PbList<StreamQueueResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamQueueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamQueueResponse>(create);
  static StreamQueueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get queue => $_getIZ(0);
  @$pb.TagNumber(1)
  set queue($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);
}

