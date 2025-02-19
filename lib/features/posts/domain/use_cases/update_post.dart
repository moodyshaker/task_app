import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/post.dart';
import '../repositories/posts_repository.dart';

class UpdatePostUseCase {
  final PostsRepository repository;

  UpdatePostUseCase(this.repository);

  Future<Either<Failure, Unit>> call(Post post) async =>
      await repository.updatePost(post);
}