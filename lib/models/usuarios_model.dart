class UsuariosModel {
  String id;
  String nome;
  String senha;
  String email;
  String urlavatar;
  String administrador;

  UsuariosModel({
    required this.id,
    required this.nome,
    required this.senha,
    required this.email,
    required this.urlavatar,
    required this.administrador,
  });

  static UsuariosModel fromMap(Map<String, dynamic> map) {
    //if (map == null) return null;

    return UsuariosModel(
        id: map['id'],
        nome: map['nome'],
        senha: map['senha'],
        email: map['emil'],
        urlavatar: map['urlavatar'],
        administrador: map['administrador']);
  }
}
