import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barber Maps'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner principal
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                children: [
                  Icon(
                    Icons.cut,
                    size: 80,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Bem-vindo ao Barber Maps',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Encontre as melhores barbearias perto de você',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Seção de categorias
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Serviços Populares',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildServiceCard(context, Icons.content_cut, 'Corte'),
                      _buildServiceCard(context, Icons.face, 'Barba'),
                      _buildServiceCard(context, Icons.brush, 'Coloração'),
                      _buildServiceCard(context, Icons.spa, 'Tratamento'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Barbearias em Destaque',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildFeaturedCard(
                    context,
                    name: 'Premium Barber Shop',
                    rating: 4.9,
                    services: 'Corte, Barba, Tratamento',
                  ),
                  const SizedBox(height: 12),
                  _buildFeaturedCard(
                    context,
                    name: 'Estilo & Classe',
                    rating: 4.7,
                    services: 'Corte, Coloração, Spa',
                  ),
                  const SizedBox(height: 12),
                  _buildFeaturedCard(
                    context,
                    name: 'Barber Kings',
                    rating: 4.8,
                    services: 'Corte Premium, Barba',
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard(BuildContext context, IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 32,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildFeaturedCard(
    BuildContext context, {
    required String name,
    required double rating,
    required String services,
  }) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.cut,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.star, size: 14, color: Colors.amber),
                const SizedBox(width: 4),
                Text(rating.toString(), style: const TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(height: 4),
            Text(services, style: const TextStyle(fontSize: 12)),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
