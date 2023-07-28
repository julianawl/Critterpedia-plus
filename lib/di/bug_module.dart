import 'package:critterpedia_plus/data/bugs/data_source/bug_data_source.dart';
import 'package:critterpedia_plus/data/bugs/repository/bug_repository.dart';
import 'package:critterpedia_plus/data/core/http/api.dart';
import 'package:critterpedia_plus/domain/bugs/repository/i_bug_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BugModule {
  BugDataSource getBugsDataSource(Api networkService) {
    return BugDataSource(networkService);
  }

  IBugRepository getBugRepository(BugDataSource bugDataSource) {
    return BugRepository(
      dataSource: bugDataSource,
    );
  }
}
