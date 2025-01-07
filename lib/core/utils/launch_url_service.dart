import 'package:chatty_charm/core/utils/api_key.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlService {
  static void sendEmail() async {
    final Uri url = Uri(
      scheme: "mailto",
      path: ApiKey.email,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  static void launchURL() async {
    final Uri url = Uri.parse(ApiKey.privacyPolicyUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
