import 'package:flutter/material.dart';

import '../widgets/section_header.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alerts & Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SectionHeader(title: 'Alerts by Symbol'),
          _AlertTile(title: 'EURUSD'),
          _AlertTile(title: 'XAUUSD'),
          _AlertTile(title: 'BTCUSDT'),
          SizedBox(height: 12),
          SectionHeader(title: 'Channels'),
          _AlertTile(title: 'Push Notifications'),
          _AlertTile(title: 'WhatsApp Alerts'),
          _AlertTile(title: 'Telegram Alerts'),
          SizedBox(height: 12),
          SectionHeader(title: 'Risk Disclaimer'),
          _DisclaimerTile(),
        ],
      ),
    );
  }
}

class _AlertTile extends StatelessWidget {
  const _AlertTile({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: true,
      onChanged: (_) {},
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}

class _DisclaimerTile extends StatelessWidget {
  const _DisclaimerTile();

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Educational Use Only',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      children: const [
        Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Signals are analytical insights, not financial advice. '
            'Trading involves risk and may result in losses.',
          ),
        ),
      ],
    );
  }
}
