import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/home.dart';
import 'package:my_pet/service/userService.dart';

import '../../models/User.dart';

class ProfileSetup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileSetup();
  }
}

class _ProfileSetup extends State<ProfileSetup> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  bool checkedValue = false;
  UserService userService = UserService();

  Future<void> saveUser() async {
    try {
      List<AuthUserAttribute> userAttributes =
          await Amplify.Auth.fetchUserAttributes();
      String email = '';

      for (var attribute in userAttributes) {
        // ignore: unrelated_type_equality_checks
        if (attribute.userAttributeKey.toString() == "email") {
          email = attribute.value;
        }
      }

      User? newUser;

      try {
        newUser = await userService.getUser();
        print("This is the new user: ");
        print(newUser.toString());
      } catch (e) {
        print('Error getting user: $e');
      }

      if (newUser == null || newUser.id.isEmpty) {
        newUser = User(
          id: UUID.getUUID(),
          name: _nameController.text,
          location: _locationController.text,
          email: email,
          isCaretaker: checkedValue,
        );
      } else {
        newUser = newUser.copyWith(
          name: _nameController.text,
          location: _locationController.text,
          email: email,
          isCaretaker: checkedValue,
        );
      }

      await userService.saveUser(newUser);

      // Navigate to home screen after saving user.
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } catch (e) {
      print('An error occurred while saving User: $e');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _locationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  label: Text("Type your Name"),
                ),
              ),
              TextField(
                controller: _locationController,
                decoration: const InputDecoration(
                  label: Text("Type your city"),
                ),
              ),
              CheckboxListTile(
                title: const Text("Check the box if you are pet care taker"),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
              ),
              ElevatedButton(onPressed: saveUser, child: const Text("Submit")),
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () async {
                  final result = await Amplify.Auth.signOut();
                  if (result is CognitoCompleteSignOut) {
                    safePrint('Sign out completed successfully');
                  } else if (result is CognitoFailedSignOut) {
                    safePrint(
                        'Error signing user out: ${result.exception.message}');
                  }
                },
              )
            ])));
  }
}
