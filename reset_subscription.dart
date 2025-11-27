import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('subscribed', false);
  print('Subscription status reset to false');
}
