import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar Barbearias'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SearchBar(
              controller: _searchController,
              hintText: 'Buscar por nome, localização...',
              leading: const Icon(Icons.search),
              trailing: [
                IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {
                    // Implementar filtros
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Filtros em desenvolvimento'),
                      ),
                    );
                  },
                ),
              ],
              onChanged: (value) {
                // Implementar busca
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Barbearias Próximas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildBarberShopCard(
                  context,
                  name: 'Barber Shop Premium',
                  address: 'Rua Principal, 123 - Centro',
                  rating: 4.8,
                  distance: '500m',
                ),
                _buildBarberShopCard(
                  context,
                  name: 'Corte & Estilo',
                  address: 'Av. Secundária, 456 - Jardim',
                  rating: 4.5,
                  distance: '1.2km',
                ),
                _buildBarberShopCard(
                  context,
                  name: 'Clássica Barbearia',
                  address: 'Rua das Flores, 789 - Vila',
                  rating: 4.9,
                  distance: '2.0km',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBarberShopCard(
    BuildContext context, {
    required String name,
    required String address,
    required double rating,
    required String distance,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12.0),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.cut,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.location_on, size: 14),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    address,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.star, size: 14, color: Colors.amber),
                const SizedBox(width: 4),
                Text(
                  rating.toString(),
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.navigation, size: 14),
                const SizedBox(width: 4),
                Text(
                  distance,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          // Implementar navegação para detalhes
        },
      ),
    );
  }
}
