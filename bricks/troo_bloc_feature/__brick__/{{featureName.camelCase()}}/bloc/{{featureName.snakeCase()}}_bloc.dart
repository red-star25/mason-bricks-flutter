import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '{{featureName.snakeCase()}}_event.dart';
part '{{featureName.snakeCase()}}_state.dart';

class {{featureName.pascalCase()}}Bloc extends Bloc<{{featureName.pascalCase()}}Event, {{featureName.pascalCase()}}State> {
  {{featureName.pascalCase()}}Bloc() : super({{featureName.pascalCase()}}Initial()) {
    on<{{featureName.pascalCase()}}Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
