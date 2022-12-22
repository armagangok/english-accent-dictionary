import 'package:dartz/dartz.dart';

import '../../core/error/contract/failure.dart';
import '../../data/model/word_model.dart';
import '../repository/local_word_repository.dart';

class LocalWordUsecase {
  LocalWordUsecase({required this.repository});

  final LocalWordRepository repository;

  Future<Either<Failure, WordModel>> fetchWord({required String word}) async {
    return await repository.fetchWord(word: word);
  }

  Future<Either<Failure, bool>> deleteAllWords() async {
    return await repository.deleteAllWords();
  }

  Future<Either<Failure, bool>> deleteByName(WordModel wordModel) async {
    return await repository.deleteByName(wordModel);
  }

  Future<Either<Failure, bool>> deleteWord(int index) async {
    return await repository.deleteWord(index);
  }

  Future<Either<Failure, String>> getLanguage() async {
    return await repository.getLanguage();
  }

  Future<Either<Failure, bool>> save(int index, WordModel value) async {
    return await repository.save(index, value);
  }

  Future<Either<Failure, bool>> setupLanguage() async {
    return await repository.setupLanguage();
  }
}
