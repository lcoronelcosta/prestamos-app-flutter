import 'package:app_prestamos/infrastructure/datasources/clients_datasources_impl.dart';
import 'package:app_prestamos/infrastructure/repositories/client_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientRepositoryProvider = Provider((ref){
  return ClientRepositoryImpl(ClientsDataSourceImpl());
});