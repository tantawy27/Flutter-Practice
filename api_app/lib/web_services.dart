import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:api_app/user.dart';

part 'web_services.g.dart'; 


@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')

abstract class WebServices {
factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;
  


@GET('users')   

Future<List<User>> getAllUsers();
  

  @GET('users/{id}')   //path

  Future<User>getUserById(@Path() int id);



  @POST('users')   //body
  Future<User> createNewUser(@Body() User newUser,@Header('Authorization') String token);
  
  



  



}