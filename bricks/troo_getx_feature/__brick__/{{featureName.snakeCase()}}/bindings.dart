import 'package:get/get.dart';
import './controller.dart';

class {{featureName.pascalCase()}}Binding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<{{featureName.pascalCase()}}Controller>(() => {{featureName.pascalCase()}}Controller());
  }
}