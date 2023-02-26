import 'package:dartz/dartz.dart';
import 'package:store_app/core/api/api_services.dart';
import 'package:store_app/core/errors/failures.dart';
import 'package:store_app/feature/layout/data/repository/home_repository.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final ApiServices apiServices;

  const HomeRepositoryImplementation(this.apiServices);

  @override
  Future<Either<Failure, Object>> fetchWHomeData() {
    // TODO: implement fetchWHomeData
    throw UnimplementedError();
  }
}
