///
//  Generated code. Do not modify.
//  source: queue.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use updateQueueRequestDescriptor instead')
const UpdateQueueRequest$json = const {
  '1': 'UpdateQueueRequest',
};

/// Descriptor for `UpdateQueueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateQueueRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVRdWV1ZVJlcXVlc3Q=');
@$core.Deprecated('Use updateQueueResponseDescriptor instead')
const UpdateQueueResponse$json = const {
  '1': 'UpdateQueueResponse',
};

/// Descriptor for `UpdateQueueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateQueueResponseDescriptor = $convert.base64Decode('ChNVcGRhdGVRdWV1ZVJlc3BvbnNl');
@$core.Deprecated('Use loadQueueRequestDescriptor instead')
const LoadQueueRequest$json = const {
  '1': 'LoadQueueRequest',
};

/// Descriptor for `LoadQueueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadQueueRequestDescriptor = $convert.base64Decode('ChBMb2FkUXVldWVSZXF1ZXN0');
@$core.Deprecated('Use loadQueueResponseDescriptor instead')
const LoadQueueResponse$json = const {
  '1': 'LoadQueueResponse',
  '2': const [
    const {'1': 'Queue', '3': 1, '4': 1, '5': 13, '10': 'Queue'},
  ],
};

/// Descriptor for `LoadQueueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadQueueResponseDescriptor = $convert.base64Decode('ChFMb2FkUXVldWVSZXNwb25zZRIUCgVRdWV1ZRgBIAEoDVIFUXVldWU=');
@$core.Deprecated('Use getQueueRequestDescriptor instead')
const GetQueueRequest$json = const {
  '1': 'GetQueueRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetQueueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQueueRequestDescriptor = $convert.base64Decode('Cg9HZXRRdWV1ZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use getQueueResponseDescriptor instead')
const GetQueueResponse$json = const {
  '1': 'GetQueueResponse',
  '2': const [
    const {'1': 'Queue', '3': 1, '4': 1, '5': 13, '10': 'Queue'},
  ],
};

/// Descriptor for `GetQueueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQueueResponseDescriptor = $convert.base64Decode('ChBHZXRRdWV1ZVJlc3BvbnNlEhQKBVF1ZXVlGAEgASgNUgVRdWV1ZQ==');
@$core.Deprecated('Use streamQueueRequestDescriptor instead')
const StreamQueueRequest$json = const {
  '1': 'StreamQueueRequest',
};

/// Descriptor for `StreamQueueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamQueueRequestDescriptor = $convert.base64Decode('ChJTdHJlYW1RdWV1ZVJlcXVlc3Q=');
@$core.Deprecated('Use streamQueueResponseDescriptor instead')
const StreamQueueResponse$json = const {
  '1': 'StreamQueueResponse',
  '2': const [
    const {'1': 'Queue', '3': 1, '4': 1, '5': 13, '10': 'Queue'},
  ],
};

/// Descriptor for `StreamQueueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamQueueResponseDescriptor = $convert.base64Decode('ChNTdHJlYW1RdWV1ZVJlc3BvbnNlEhQKBVF1ZXVlGAEgASgNUgVRdWV1ZQ==');