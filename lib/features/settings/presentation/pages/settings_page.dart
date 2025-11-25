import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  bool _locationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Preferências',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SwitchListTile(
            secondary: const Icon(Icons.notifications_outlined),
            title: const Text('Notificações'),
            subtitle: const Text('Receber notificações do app'),
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode_outlined),
            title: const Text('Modo Escuro'),
            subtitle: const Text('Ativar tema escuro'),
            value: _darkModeEnabled,
            onChanged: (value) {
              setState(() {
                _darkModeEnabled = value;
              });
            },
          ),
          SwitchListTile(
            secondary: const Icon(Icons.location_on_outlined),
            title: const Text('Localização'),
            subtitle: const Text('Permitir acesso à localização'),
            value: _locationEnabled,
            onChanged: (value) {
              setState(() {
                _locationEnabled = value;
              });
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Conta',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text('Privacidade'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Implementar navegação para privacidade
            },
          ),
          ListTile(
            leading: const Icon(Icons.security_outlined),
            title: const Text('Segurança'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Implementar navegação para segurança
            },
          ),
          ListTile(
            leading: const Icon(Icons.language_outlined),
            title: const Text('Idioma'),
            subtitle: const Text('Português (Brasil)'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Implementar seleção de idioma
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Sobre',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outlined),
            title: const Text('Sobre o App'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Barber Maps',
                applicationVersion: '1.0.0',
                applicationIcon: const Icon(Icons.cut),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Ajuda'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Implementar navegação para ajuda
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
