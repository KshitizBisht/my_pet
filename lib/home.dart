import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/models/ModelProvider.dart';
import 'package:my_pet/service/userService.dart';
import 'package:my_pet/views/Onboarding/profileSetup.dart';
import 'package:my_pet/views/Search/search.dart';

import 'views/Requests.dart/previousRequests.dart';
import 'views/profile/profile.dart';

//petcare
//12345678

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  UserService userService = UserService();



   int _currentIndex = 0;

    void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
  
  Future<User> checkUser() async{
    User user = await userService.getUser();
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
      future: checkUser(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.data == null || snapshot.data!.name.isEmpty || snapshot.data!.email.isEmpty) {
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => ProfileSetup()));
          });
          return Container();
        } else {
          final currentUser = snapshot.data;
          final List<Widget> _children = [
            const SearchPage(),
            ProfilePage(user: currentUser!),
            const RequestsPage(), // Update the RequestsPage constructor similarly
          ];
          return Scaffold(
            appBar: AppBar(
              actions: [
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
              ],
            ),
            body: _children[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
                BottomNavigationBarItem(icon: Icon(Icons.list), label: "Requests")
              ],
            ),
          );
        }
      },
    );
  }
}
