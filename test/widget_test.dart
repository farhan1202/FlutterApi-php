// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse("http://192.168.100.134/pemilu/api/getAllCandidate.php");

  final resp = await http.get(url);
  print(resp.body);
}
