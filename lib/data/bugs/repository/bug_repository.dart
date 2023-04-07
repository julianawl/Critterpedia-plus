// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/bugs/data_source/bug_data_source.dart';
import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:critterpedia_plus/domain/bugs/repository/i_bug_repository.dart';
import 'package:typed_result/typed_result.dart';

class BugRepository extends IBugRepository {
  BugDataSource dataSource;

  BugRepository({
    required this.dataSource,
  });

  @override
  Future<Result<List<Bug>, RequestError>> getAllBugs() async {
    return (await dataSource.getBugs())
        .map((data) => data.map((e) => e.toDomain()).toList(growable: false));
  }
}
