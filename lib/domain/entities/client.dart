class Client {
  final int id;
  final String nombres;
  final String apellidos;
  final String identificacion;
  final String direccion;
  final String telefono;
  final String avatar;
  final dynamic deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  Client({
      required this.id,
      required this.nombres,
      required this.apellidos,
      required this.identificacion,
      required this.direccion,
      required this.telefono,
      required this.avatar,
      required this.deletedAt,
      required this.createdAt,
      required this.updatedAt,
  });
}