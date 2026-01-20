import 'package:flutter/material.dart';

class ParentsProfilePage extends StatelessWidget {
  const ParentsProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget sectionTitle(String text) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
        child: Text(
          text,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w800,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.65),
            letterSpacing: 0.2,
          ),
        ),
      );
    }

    Widget tile({
      required IconData icon,
      required String title,
      String? subtitle,
      VoidCallback? onTap,
      bool danger = false,
    }) {
      final color = danger
          ? Colors.red.shade700
          : theme.colorScheme.onSurface.withValues(alpha: 0.78);

      return ListTile(
        onTap: onTap,
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.2,
            color: danger ? Colors.red.shade700 : null,
          ),
        ),
        subtitle: subtitle == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  subtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ),
        trailing: Icon(
          Icons.chevron_right_rounded,
          color: theme.colorScheme.onSurface.withValues(alpha: 0.45),
        ),
      );
    }

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(bottom: 12),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
            child: Text(
              'Profile',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: -0.6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.08),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor:
                        theme.colorScheme.primary.withValues(alpha: 0.12),
                    child: Icon(
                      Icons.person_rounded,
                      color: theme.colorScheme.primary,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shrita',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.3,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Parent of Arya Sharma',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurface.withValues(
                              alpha: 0.65,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  FilledButton.tonal(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                    ),
                    child: const Text('Edit'),
                  ),
                ],
              ),
            ),
          ),
          sectionTitle('Account'),
          tile(
            icon: Icons.badge_outlined,
            title: 'Student details',
            subtitle: 'Class, bus stop, and route',
            onTap: () {},
          ),
          tile(
            icon: Icons.location_on_outlined,
            title: 'Saved stops',
            subtitle: 'Pickup & drop locations',
            onTap: () {},
          ),
          sectionTitle('Preferences'),
          tile(
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            subtitle: 'Alert types and quiet hours',
            onTap: () {},
          ),
          tile(
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy',
            subtitle: 'Permissions and data controls',
            onTap: () {},
          ),
          sectionTitle('Support'),
          tile(
            icon: Icons.help_outline_rounded,
            title: 'Help center',
            subtitle: 'FAQs and contact support',
            onTap: () {},
          ),
          tile(
            icon: Icons.logout_rounded,
            title: 'Log out',
            onTap: () {},
            danger: true,
          ),
        ],
      ),
    );
  }
}

