import 'package:app_prestamos/config/constants/enviroment.dart';
import 'package:app_prestamos/domain/datasources/clients_datasource.dart';
import 'package:app_prestamos/domain/entities/client.dart';
import 'package:app_prestamos/infrastructure/mappers/client_mapper.dart';
import 'package:app_prestamos/infrastructure/models/client/clients.dart';
import 'package:dio/dio.dart';

class ClientsDataSourceImpl extends ClientsDataSource {
  
  final dio = Dio(
    BaseOptions(
      baseUrl: Environment.urlBaseApi
    )
  );
  
  @override
  Future<List<Client>> getClients({int page = 1}) async{

    final response = await dio.get('/clients');

    final clientsResponse = ClientsResponse.fromJson(response.data);

    final List<Client> clients = clientsResponse.data.data
    .map((clientResponse) => ClientMapper.clientResponseToEntity(clientResponse)
    ).toList();
    
    return clients;

  }
  
}