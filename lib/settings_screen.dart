import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Settings'),
        actions: [Icon(Icons.search)],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8-sy0Y-97bsW5BLoIHWPMIUN-AYMvT9wJrQ&s',
              ),
            ),
            title: Text('Contanct'),
            subtitle: Text('About'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.qr_code), Icon(Icons.add_circle_outline)],
            ),
          ),
          Divider(),
          buildSettingItem(
            Icons.vpn_key,
            'Account',
            'Security notifications,change number',
          ),
          buildSettingItem(
            Icons.lock,
            'Privacy',
            'Block contacts,disappearing messages',
          ),
          buildSettingItem(Icons.person, 'Avatar', 'Create,edit,profile photo'),
          buildSettingItem(
            Icons.chat_outlined,
            'Chats',
            'Theme,walpaperschat history',
          ),
          buildSettingItem(
            Icons.notifications,
            'Notification',
            'Message,group & call tones',
          ),
          buildSettingItem(
            Icons.storage_rounded,
            'Storage and data',
            'Network usage,auto-download',
          ),
          buildSettingItem(Icons.accessibility, 'Accessibility', 'Animation'),
          buildSettingItem(
            Icons.language,
            'App language',
            "English(device's languages)",
          ),
        ],
      ),
    );
  }

  Widget buildSettingItem(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
