import 'package:app_prestamos/domain/datasources/clients_datasource.dart';
import 'package:app_prestamos/domain/entities/client.dart';
import 'package:app_prestamos/domain/repositories/client_repository.dart';

class ClientRepositoryImpl extends ClientsRepository{

  final ClientsDataSource datasource;
  ClientRepositoryImpl(this.datasource);

  @override
  Future<List<Client>> getClients({ int page = 1 }) {
    return datasource.getClients();
  }
  
}