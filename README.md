# binary_sink
Handy sink for building typed integer buffers in Dart.

This can be used to conveniently generate binary data containing
fixed-size integers.

Not yet on Pub, because there are not yet any tests.

```dart

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
```
