import 'dart:developer';

import 'app/count_stream.dart';
import 'app/sum_stream.dart';

void main() async {
  Stream<int> stream = countStream(10);

  int sum = await sumStream(stream);

  log('$sum'); //45
}
