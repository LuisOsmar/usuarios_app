import 'package:usuarios_app/data_base/database.dart';
import 'package:usuarios_app/interface/idatabase.dart';
import 'package:usuarios_app/interface/idbmanager.dart';
import 'package:http/http.dart' as http;

class Dbmanager implements Idbmanager {
  Idatabase database = Database();

  @override
  Future<String> register(String name, String password) async {
    return await database.insert(name, password);
  }

  @override
  Future<Idbmanager> connect() async {
    var connect = await database.connect();
    return this;
  }
}
