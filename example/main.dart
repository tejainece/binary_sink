import 'dart:io';
import 'package:binary_sink/binary_sink.dart';
import 'package:charcode/ascii.dart';

void main() {
  var sink = new BinarySink();
  sink
    ..addUint8($f)
    ..addUint8($o)
    ..addUint8($o)
    ..writeln('bar');
  
  await new File('foo.bin').writeAsBytes(sink.toBytes());
}
