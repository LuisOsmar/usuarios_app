abstract class Idbmanager {
  Future<String> register(String name, String password);
  Future<Idbmanager> connect();
}
