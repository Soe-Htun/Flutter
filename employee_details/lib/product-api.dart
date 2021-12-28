import 'product.dart';
import 'package:http/http.dart' as http;

Future<List<Products>> fetchProducts() async {
  var url = Uri.parse("http://10.216.77.113/flutter/employees/employees.php");
  final response = await http.get(url);
  return productsFromJson(response.body);
  
}