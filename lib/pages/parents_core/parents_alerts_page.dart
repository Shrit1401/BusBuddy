import 'package:flutter/material.dart';

class ParentsAlertsPage extends StatelessWidget {
  const ParentsAlertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final items = const [
      (
        icon: Icons.directions_bus_rounded,
        title: 'Bus is approaching',
        subtitle: 'ETA updated to 12 min',
        time: '2m',
        highlight: true,
      ),
      (
        icon: Icons.place_rounded,
        title: 'Reached stop',
        subtitle: 'Near Baba Nagar',
        time: '8m',
        highlight: false,
      ),
      (
        icon: Icons.schedule_rounded,
        title: 'Pickup reminder',
        subtitle: 'Pickup at 8:40 AM',
        time: '1h',
        highlight: false,
      ),
      (
        icon: Icons.check_circle_rounded,
        title: 'Trip started',
        subtitle: 'Bus left the school gate',
        time: 'Yesterday',
        highlight: false,
      ),
    ];

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
        children: [
          Row(
            children: [
              Text(
                'Alerts',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.6,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.tune_rounded,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.65),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...items.map(
            (a) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Material(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(18),
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: a.highlight
                          ? theme.colorScheme.primary.withValues(alpha: 0.22)
                          : theme.colorScheme.onSurface.withValues(alpha: 0.08),
                      width: 1,
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    leading: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: a.highlight
                            ? theme.colorScheme.primary.withValues(alpha: 0.14)
                            : theme.colorScheme.surfaceContainerHighest
                                .withValues(alpha: 0.6),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        a.icon,
                        color: a.highlight
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                    ),
                    title: Text(
                      a.title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.2,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        a.subtitle,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.65,
                          ),
                        ),
                      ),
                    ),
                    trailing: Text(
                      a.time,
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

