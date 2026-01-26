import 'package:auto_route/auto_route.dart';
import 'package:travel_app/src/core/di/injection.dart';
import 'package:travel_app/src/core/storage/secure_storage/secure_storage.dart';
import 'package:travel_app/src/core/utils/constants/api_constants.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final secureStorage = sl<SecureStorage>();
    // Support both the API constants key and the repository key to avoid mismatch
    final token = await secureStorage.read(key: ApiConstants.accessTokenKey) ??
        await secureStorage.read(key: 'auth_token');

    if (token != null && token.isNotEmpty) {
      resolver.next(true);
    } else {
      // router.replaceAll([const LoginRoute()]);
      resolver.next(true);
    }
  }
}