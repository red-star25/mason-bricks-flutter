import '../api/{{featureName}}_api.dart';

class {{featureName.pascalCase()}}Repository {
  final {{featureName.pascalCase()}}Api {{featureName.camelCase()}}Api;

  {{featureName.pascalCase()}}Repository({required this.{{featureName.camelCase()}}Api});
}
