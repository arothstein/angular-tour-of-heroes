import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [formDirectives],
)
class AppComponent {
  final title = 'Tour of Heroes';
  Hero hero = new Hero(1,'Windstorm');
}
