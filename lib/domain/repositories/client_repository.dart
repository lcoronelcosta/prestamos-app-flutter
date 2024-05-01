import 'package:app_prestamos/domain/entities/client.dart';

abstract class ClientsRepository {

  Future<List<Client>> getClients({ int page = 1 });
  
}