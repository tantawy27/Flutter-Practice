import 'package:api_app/user.dart';
import 'package:api_app/web_services.dart';

class MyRepo {
final WebServices webServices;

MyRepo(this.webServices);

Future<List<User>> getAllUsers() async {
var response = await webServices.getAllUsers();


return response.map((singleUserDataFromJson) => User.fromJson(singleUserDataFromJson.toJson())).toList();
}

//dont need to make anthor class to get one user

Future<User> getUserById(int userId) async {
var response = await webServices.getUserById(userId);

return User.fromJson(response.toJson());
}





} 