import 'package:foody/services/firebase/firebase_remote_service.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class LoginController extends GetxController {

  @override
  void onInit() {
    // login();
    super.onInit();
  }
   void login(){
    LoginUser.withPhoneNumber(phoneNumber:"9840783456");
  }
}