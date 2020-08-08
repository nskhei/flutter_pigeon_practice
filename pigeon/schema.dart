import 'package:pigeon/pigeon.dart';

class AddRequest {
  int n1;
  int n2;
}

class AddReply {
  int result;
}

@HostApi()
abstract class Api {
  AddReply add(AddRequest req);
}

void configurePigeon(PigeonOptions opts) {
  opts.dartOut = 'lib/api_generated.dart';
  opts.javaOut = 'android/app/src/main/java/io/flutter/plugins/Pigeon.java';
  opts.javaOptions.package = "io.flutter.plugins";
  opts.objcHeaderOut = 'ios/Runner/Pigeon.h';
  opts.objcSourceOut = 'ios/Runner/Pigeon.m';
  opts.objcOptions.prefix = 'FLT';
}
