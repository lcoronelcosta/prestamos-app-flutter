class ClientResponse {
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

    ClientResponse({
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

    factory ClientResponse.fromJson(Map<String, dynamic> json) => ClientResponse(
        id: json["id"],
        nombres: json["nombres"],
        apellidos: json["apellidos"],
        identificacion: json["identificacion"],
        direccion: json["direccion"],
        telefono: json["telefono"],
        avatar: json["avatar"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombres": nombres,
        "apellidos": apellidos,
        "identificacion": identificacion,
        "direccion": direccion,
        "telefono": telefono,
        "avatar": avatar,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
