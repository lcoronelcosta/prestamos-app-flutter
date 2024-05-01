import 'package:app_prestamos/domain/entities/client.dart';
import 'package:app_prestamos/infrastructure/models/client/client_response.dart';

class ClientMapper {
  static Client clientResponseToEntity(ClientResponse clientResponse) => Client(
    id: clientResponse.id, 
    nombres: clientResponse.nombres, 
    apellidos: clientResponse.apellidos, 
    identificacion: clientResponse.identificacion, 
    direccion: clientResponse.direccion, 
    telefono: clientResponse.telefono, 
    avatar: clientResponse.avatar, 
    deletedAt: clientResponse.deletedAt, 
    createdAt: clientResponse.createdAt, 
    updatedAt: clientResponse.updatedAt
  );
}