abstract class BaseApiServices {
  Future<dynamic> get(String url, {Map<String, String>? headers});
  Future<dynamic> post(String url,
      {Map<String, String>? headers, dynamic data});
  // Future<dynamic> put(String url, {Map<String, dynamic>? headers, dynamic body});
  // Future<dynamic> delete(String url, {Map<String, dynamic>? headers});
}
