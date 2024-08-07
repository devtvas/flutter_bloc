import 'dart:developer';

import 'package:flutter_bloc_hello/app/count_stream.dart';
import 'package:flutter_bloc_hello/app/sum_stream.dart';

void main() async {
  Stream<int> stream = countStream(10);

  int sum = await sumStream(stream);

  log('$sum'); //45
}
