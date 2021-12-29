abstract class Idatabase {
  Future<String> insert(String name, String password);
  Future connect();
}
