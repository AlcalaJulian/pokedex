
import 'package:go_router/go_router.dart';

abstract class NavigationContract {
  void setRouter(GoRouter goRouter);
  void goTo(String path);
  void pushTo(String path);
  void goBack();
}

class Navigation implements NavigationContract {
  late final GoRouter router;

  @override
  void setRouter(GoRouter goRouter) {
    router = goRouter;
  }

  @override
  void goTo(String path) {
    router.go(path);
  }

  @override
  void pushTo(String path) {
    router.push(path);
  }

  @override
  void goBack() {
    if (router.canPop()) {
      router.pop();
    }
  }
}
