  import 'package:meta/meta.dart';
  import 'package:api_app/my_repo.dart';
  import 'package:api_app/user.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  part 'my_state.dart';

  
  class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  
  MyCubit (this.myRepo): super(MyInitial());


  void emitGetAllUsers() {
  myRepo.getAllUsers().then((usersList) {
  emit(GetAllUsers (usersList));
});
}
  }