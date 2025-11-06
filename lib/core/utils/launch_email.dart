import 'package:url_launcher/url_launcher.dart';

/// {@template launch_email}
/// A utility class to launch an email.
/// {@endtemplate}
class LaunchEmail {
  /// {@macro launch_email}
  static void call({
    required String email,
    required String subject,
    required String body,
  }) {
    final subjectEncoded = Uri.encodeComponent(subject);
    final bodyEncoded = Uri.encodeComponent(body);
    final Uri emailparsed = Uri.parse(
      'mailto:$email?subject=$subjectEncoded&body=$bodyEncoded',
    );
    launchUrl(emailparsed, mode: LaunchMode.externalApplication);
  }
}
