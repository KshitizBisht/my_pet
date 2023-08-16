import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

class HelperFunction {
  getLoggedUserEmailId() async {
    List<AuthUserAttribute> userAttributes =
        await Amplify.Auth.fetchUserAttributes();
    String email = '';

    for (var attribute in userAttributes) {
      // ignore: unrelated_type_equality_checks
      if (attribute.userAttributeKey.toString() == "email") {
        email = attribute.value;
      }
    }
    return email;
  }


  isUserSignedIn() async {
    final userInfo = await Amplify.Auth.fetchAuthSession();
    return userInfo.isSignedIn;
  }
}
