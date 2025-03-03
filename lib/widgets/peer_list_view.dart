import 'dart:async';

import 'package:flutter/material.dart';

import 'package:moru_app/external/moru/moru.dart' as moru;
import 'package:moru_app/external/moru/peer.dart';

class PeerListView extends StatefulWidget {
  const PeerListView({super.key});

  @override
  State<PeerListView> createState() => _PeerListViewState();
}

class _ErrorBanner extends StatelessWidget {
  final String message;

  const _ErrorBanner({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PeerCard extends StatelessWidget {
  final Peer peer;

  const _PeerCard({
    required this.peer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: peer.role == 'host'
              ? Theme.of(context).colorScheme.primaryContainer
              : Theme.of(context).colorScheme.secondaryContainer,
          child: Icon(
            peer.role == 'host' ? Icons.dns : Icons.smartphone,
            color: peer.role == 'host'
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
          ),
        ),
        title: Text(peer.displayName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(peer.id.shortRepresentation),
            const SizedBox(height: 4),
              Text(
                peer.address != null && peer.address!.isNotEmpty
                    ? peer.address!
                    : '(no address available)',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              )
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  final bool isRefreshing;

  const _ProgressIndicator({
    required this.isRefreshing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor.withValues(alpha: 0.1),
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            isRefreshing ? 'Refreshing...' : '',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}

class _PeerListViewState extends State<PeerListView> {
  Timer? _refreshTimer;
  List<Peer> _peers = [];
  String? _error;
  bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    _startPolling();
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    super.dispose();
  }

  Future<void> _refreshPeers() async {
    setState(() => _isRefreshing = true);
    
    try {
      final peers = moru.knownPeers();
      if (mounted) {
        setState(() {
          _peers = peers;
          _error = null;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
        });
      }
    }

    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() => _isRefreshing = false);
    }
  }

  void _startPolling() {
    _refreshPeers();
    _refreshTimer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => _refreshPeers(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshPeers,
      child: Column(
        children: [
          _ProgressIndicator(isRefreshing: _isRefreshing),
          if (_error != null) _ErrorBanner(message: _error!),
          Expanded(
            child: ListView.builder(
              itemCount: _peers.length,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => _PeerCard(peer: _peers[index]),
            ),
          ),
        ],
      ),
    );
  }
}
