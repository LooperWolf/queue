import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';
import 'package:queue/grpc/proto/queue.pbgrpc.dart';

final grpc = Grpc.instance();

class Grpc {
  static final _instance = Grpc._internal();

  QueueApiClient _client;
  factory Grpc.instance() => _instance;
  Grpc._internal();
  Future<int> LoadQueue() async {
    final buf = await _client.loadQueue(LoadQueueRequest());
    return buf.queue;
  }

  Future<int> GetQueue(String name) async {
    final buf = await _client.getQueue(GetQueueRequest(name: name));
    return buf.queue;
  }

  Future<void> UpdateQueue() async {
    _client.updateQueue(UpdateQueueRequest());
    return;
  }

  ResponseStream<StreamQueueResponse> StreamQueue() {
    return _client.streamQueue(StreamQueueRequest());
  }

  Future<void> start() async {
    final buf =
        GrpcWebClientChannel.xhr(Uri.parse("http://130.211.206.191:8080"));
    _client = QueueApiClient(buf);
    return;
  }
}
