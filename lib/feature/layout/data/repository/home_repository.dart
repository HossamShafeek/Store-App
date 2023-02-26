import 'package:dartz/dartz.dart';
import 'package:store_app/core/errors/failures.dart';

abstract class HomeRepository {
  Future<Either<Failure,Object >> fetchWHomeData();

}
