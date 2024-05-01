import 'package:app_prestamos/domain/entities/client.dart';
import 'package:app_prestamos/presentation/providers/client/clients_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getClientsProvider = StateNotifierProvider<ClientsNotifier, List<Client>>((ref) {

  final fetchMoreClients = ref.watch(clientRepositoryProvider).getClients;

  return ClientsNotifier(
    fetchMoreClients: fetchMoreClients
  );
});


typedef ClientCall = Future<List<Client>> Function({
  int page
});

class ClientsNotifier extends StateNotifier<List<Client>>{

  int currentPage = 0;
  ClientCall fetchMoreClients;

  ClientsNotifier({
    required this.fetchMoreClients
  }) :super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final List<Client> clients = await fetchMoreClients(page: currentPage);
    state = [];
    state = [...state, ...clients];
  }

}