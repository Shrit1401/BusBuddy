import 'package:flutter/material.dart';
import 'package:busbuddy/utils/constants/colour_constants.dart';

class DriverProfilePage extends StatelessWidget {
  const DriverProfilePage({super.key});

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

      return Material(
        color: Colors.transparent,
        child: ListTile(
          onTap: onTap,
          leading: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest.withValues(
                alpha: 0.6,
              ),
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
        ),
      );
    }

    Widget statCard({
      required String label,
      required String value,
      required IconData icon,
    }) {
      return Expanded(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: lightBlue.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: lightBlue.withValues(alpha: 0.3),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: lightBlue, size: 28),
              const SizedBox(height: 8),
              Text(
                value,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.5,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.black.withValues(alpha: 0.6),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.teal.shade300, Colors.green.shade300],
                        ),
                      ),
                      child: Icon(
                        Icons.person_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rajesh Kumar',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                              letterSpacing: -0.3,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Bus Driver • Route 12',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Row(
                children: [
                  statCard(
                    label: 'Total Trips',
                    value: '1,247',
                    icon: Icons.directions_bus_rounded,
                  ),
                  const SizedBox(width: 12),
                  statCard(
                    label: 'Rating',
                    value: '4.8',
                    icon: Icons.star_rounded,
                  ),
                  const SizedBox(width: 12),
                  statCard(
                    label: 'Years',
                    value: '5',
                    icon: Icons.calendar_today_rounded,
                  ),
                ],
              ),
            ),
            sectionTitle('Driver Information'),
            tile(
              icon: Icons.badge_outlined,
              title: 'License Number',
              subtitle: 'DL-1234567890',
              onTap: () {},
            ),
            tile(
              icon: Icons.directions_bus_rounded,
              title: 'Vehicle Details',
              subtitle: 'Bus #42 • KA-01-AB-1234',
              onTap: () {},
            ),
            tile(
              icon: Icons.phone_outlined,
              title: 'Contact Number',
              subtitle: '+91 98765 43210',
              onTap: () {},
            ),
            tile(
              icon: Icons.email_outlined,
              title: 'Email Address',
              subtitle: 'rajesh.kumar@busbuddy.com',
              onTap: () {},
            ),
            sectionTitle('Account'),
            tile(
              icon: Icons.route_outlined,
              title: 'Route Information',
              subtitle: 'View assigned routes and stops',
              onTap: () {},
            ),
            tile(
              icon: Icons.history_outlined,
              title: 'Trip History',
              subtitle: 'View past trips and records',
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
              icon: Icons.location_on_outlined,
              title: 'Location Settings',
              subtitle: 'GPS and tracking preferences',
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
      ),
    );
  }
}
