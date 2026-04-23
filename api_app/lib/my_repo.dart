import 'package:api_app/user.dart';
import 'package:api_app/web_services.dart';

class MyRepo {
final WebServices webServices;

MyRepo(this.webServices);

Future<List<User>> getAllUsers() async {
var response = await webServices.getAllUsers();


return response.map((singleUserDataFromJson) => User.fromJson(singleUserDataFromJson.toJson())).toList();
}
} 