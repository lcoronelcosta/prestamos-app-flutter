import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {

  static String urlBaseApi = dotenv.env['URL_BASE_API'] ?? 'No existe url base';
  
}