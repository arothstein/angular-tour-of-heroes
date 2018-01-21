import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'hero.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'heroes_component.html',
  styleUrls: const ['heroes_component.css'],
  directives: const [CORE_DIRECTIVES],
  pipes: const [COMMON_PIPES],
)
class HeroesComponent implements OnInit {
  List<Hero> heroes;
  Hero selectedHero;
  final HeroService _heroService;
  final Router _router;
  HeroesComponent(this._heroService, this._router);

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  Future<Null> gotoDetail() => _router.navigate([
    'HeroDetail',
    {'id': selectedHero.id.toString()}
  ]);
}
