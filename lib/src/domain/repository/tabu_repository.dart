import '../entities/tabu/tabu.dart';

abstract class TabuRepository {
  Future<List<Tabu>> GetRandomTabo();
}
