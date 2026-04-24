  import 'package:api_app/api_result.dart';
import 'package:api_app/cubit/result_state.dart';
import 'package:api_app/network_exceptions.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
  import 'package:api_app/my_repo.dart';
  import 'package:api_app/user.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:api_app/cubit/result_state.dart';
  

  class MyCubit extends Cubit<ResultState<User>> {
  final MyRepo myRepo;
  MyCubit (this.myRepo): super(Idle());



 /*  void emitGetAllUsers() async{
    var data = await myRepo.getAllUsers();

    data.when(success:(List<User> allUsers){
      emit(ResultState.success(allUsers));
    },
    failure:(NetworkExceptions networkExceptions){
      emit(ResultState.error(networkExceptions));
    }
    ); */


  


  void emitCreateNewUser(User newUser) async {

  var result=await myRepo.createNewUser(newUser);
  result.when(success:(User userData){
       emit(ResultState.success(userData));
    },
    failure:(NetworkExceptions networkExceptions){
      emit(ResultState.error(networkExceptions));
    }
    );
}

 }
  














/*   myRepo.getAllUsers().then((usersList) {
  emit(GetAllUsers (usersList)); 
});*/



/*
}
 void emitGetUserDetails(int userId) {
  myRepo.getUserById(userId).then((userDetails) {
  emit(GetUserDetails (userDetails));
});
}

 void emitCreateNewUser(User newUser) {
  myRepo.createNewUser(newUser).then((newUser) {
  emit(CreateNewUser(newUser));
});


}
void emitDeleteUser(String id) {
  myRepo.deleteUser(id).then((data) {
  emit( DeleteUser(data));
});

} */

  