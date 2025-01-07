import 'package:chatty_charm/core/utils/api_key.dart';
import 'package:url_launcher/url_launcher.dart';

void sendEmail() async {
  final Uri url = Uri(
    scheme: "mailto",
    path: ApiKey.email,
  );
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  }
}
