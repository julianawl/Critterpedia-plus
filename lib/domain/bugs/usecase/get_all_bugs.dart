// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:critterpedia_plus/data/core/http/request_error.dart';
import 'package:critterpedia_plus/domain/bugs/model/bug.dart';
import 'package:critterpedia_plus/domain/bugs/repository/i_bug_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:typed_result/typed_result.dart';

@injectable
class GetAllBugs {
  final IBugRepository repository;

  GetAllBugs({
    required this.repository,
  });

  Future<Result<List<Bug>, RequestError>> call() async {
    final result = await repository.getAllBugs();
    if (result.isSuccess) {
      return result.get()!.isNotEmpty ? result : Err(ServerError());
    }
    return result;
  }
}
