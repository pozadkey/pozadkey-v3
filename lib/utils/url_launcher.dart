// Function to open URL
import 'package:pozadkey_v3/shared/index.dart';

Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw 'Could not launch $url';
  }
}