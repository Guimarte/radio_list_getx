import 'package:get/get.dart';

class HomeController extends GetxController{
      Rx<String> selectedValue = ''.obs;
          List<String> options = ['Opção 1', 'Opção 2', 'Opção 3'];


      changeValue(String value){
        selectedValue.value = value;
      }

}