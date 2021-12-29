import 'package:mysql1/mysql1.dart';
import 'package:usuarios_app/interface/idatabase.dart';

class Database implements Idatabase {
  late MySqlConnection conn;

  @override
  Future<String> insert(String name, String password) async {
    final result = await conn.query(
        'insert into usuarios (nome, senha) values (?, ?)', [name, password]);

    print("resul: $result");
    return "Sucesso";
  }

  @override
  Future connect() async {
    var settings = ConnectionSettings(
        host: '192.168.0.33',
        port: 3306,
        user: 'root',
        password: 'hpc00',
        db: 'dblos');

    conn = await MySqlConnection.connect(settings);
    if (conn != null) {
      print("conectou db");
    } else {
      print("erro conexão db");
    }
  }
}
