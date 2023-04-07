import 'package:copy_with_extension/copy_with_extension.dart';

import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';

part 'bugs_state.g.dart';

@CopyWith()
class BugsState {
  final List<Bug> bugs;
  final RequestError? error;

  BugsState({
    this.bugs = const [],
    this.error,
  });
}
