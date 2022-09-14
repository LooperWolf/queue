///
//  Generated code. Do not modify.
//  source: queue.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'queue.pb.dart' as $0;
export 'queue.pb.dart';

class QueueApiClient extends $grpc.Client {
  static final _$loadQueue =
      $grpc.ClientMethod<$0.LoadQueueRequest, $0.LoadQueueResponse>(
          '/QueueApi/LoadQueue',
          ($0.LoadQueueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LoadQueueResponse.fromBuffer(value));
  static final _$getQueue =
      $grpc.ClientMethod<$0.GetQueueRequest, $0.GetQueueResponse>(
          '/QueueApi/GetQueue',
          ($0.GetQueueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetQueueResponse.fromBuffer(value));
  static final _$updateQueue =
      $grpc.ClientMethod<$0.UpdateQueueRequest, $0.UpdateQueueResponse>(
          '/QueueApi/UpdateQueue',
          ($0.UpdateQueueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateQueueResponse.fromBuffer(value));
  static final _$streamQueue =
      $grpc.ClientMethod<$0.StreamQueueRequest, $0.StreamQueueResponse>(
          '/QueueApi/StreamQueue',
          ($0.StreamQueueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.StreamQueueResponse.fromBuffer(value));

  QueueApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoadQueueResponse> loadQueue(
      $0.LoadQueueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loadQueue, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetQueueResponse> getQueue($0.GetQueueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQueue, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateQueueResponse> updateQueue(
      $0.UpdateQueueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateQueue, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamQueueResponse> streamQueue(
      $0.StreamQueueRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamQueue, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class QueueApiServiceBase extends $grpc.Service {
  $core.String get $name => 'QueueApi';

  QueueApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoadQueueRequest, $0.LoadQueueResponse>(
        'LoadQueue',
        loadQueue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoadQueueRequest.fromBuffer(value),
        ($0.LoadQueueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetQueueRequest, $0.GetQueueResponse>(
        'GetQueue',
        getQueue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetQueueRequest.fromBuffer(value),
        ($0.GetQueueResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateQueueRequest, $0.UpdateQueueResponse>(
            'UpdateQueue',
            updateQueue_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateQueueRequest.fromBuffer(value),
            ($0.UpdateQueueResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.StreamQueueRequest, $0.StreamQueueResponse>(
            'StreamQueue',
            streamQueue_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.StreamQueueRequest.fromBuffer(value),
            ($0.StreamQueueResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoadQueueResponse> loadQueue_Pre($grpc.ServiceCall call,
      $async.Future<$0.LoadQueueRequest> request) async {
    return loadQueue(call, await request);
  }

  $async.Future<$0.GetQueueResponse> getQueue_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetQueueRequest> request) async {
    return getQueue(call, await request);
  }

  $async.Future<$0.UpdateQueueResponse> updateQueue_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateQueueRequest> request) async {
    return updateQueue(call, await request);
  }

  $async.Stream<$0.StreamQueueResponse> streamQueue_Pre($grpc.ServiceCall call,
      $async.Future<$0.StreamQueueRequest> request) async* {
    yield* streamQueue(call, await request);
  }

  $async.Future<$0.LoadQueueResponse> loadQueue(
      $grpc.ServiceCall call, $0.LoadQueueRequest request);
  $async.Future<$0.GetQueueResponse> getQueue(
      $grpc.ServiceCall call, $0.GetQueueRequest request);
  $async.Future<$0.UpdateQueueResponse> updateQueue(
      $grpc.ServiceCall call, $0.UpdateQueueRequest request);
  $async.Stream<$0.StreamQueueResponse> streamQueue(
      $grpc.ServiceCall call, $0.StreamQueueRequest request);
}
